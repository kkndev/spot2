import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spot2/core/presentation/components/components.dart';
import 'package:spot2/features/parking/domain/entity/request_status/request_status.dart';
import 'package:spot2/features/parking/presentation/bloc/parking/parking.dart';

import '../../../../consts/app_images.dart';
import '../../../../extensions/extensions.dart';
import 'search_input.dart';
import 'search_list_item.dart';

class SearchParkingModal extends StatefulWidget {
  const SearchParkingModal({Key? key}) : super(key: key);

  @override
  State<SearchParkingModal> createState() => _SearchParkingModalState();
}

class _SearchParkingModalState extends State<SearchParkingModal> {
  TextEditingController searchController = TextEditingController();
  @override
  void initState() {
    searchController.addListener(() {
      if (searchController.value.text.length > 3) {
        context.read<ParkingBloc>().add(
            GetParkingByAddressEvent(searchValue: searchController.value.text));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ParkingBloc, ParkingState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SvgPicture.asset(
                  AppImages.roll,
                  width: 36,
                  height: 12,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SearchInput(
                        controller: searchController,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: TertiaryButton(
                        label: 'Отменить',
                        onTap: () => Navigator.of(context).pop(),
                      ),
                    ),
                  ],
                ),
                state.getParkingByAddressRequestStatus.when(
                  loading: () => const CircularProgressIndicator(),
                  success: (data) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: data.map(
                      (e) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: SearchListItem(parking: e),
                        );
                      },
                    ).toList(),
                  ),
                  failure: (error) => const SizedBox(),
                  init: () => const SizedBox(),
                ),
                if (searchController.value.text.length > 3 &&
                    state.searchedParkingList.isEmpty &&
                    state.getParkingByAddressRequestStatus !=
                        const RequestStatus.loading())
                  const NotFound(),
              ],
            ),
          );
        },
      ),
    );
  }
}

class NotFound extends StatelessWidget {
  const NotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 112, 32, 0),
      child: Column(
        children: [
          SvgPicture.asset(
            AppImages.notFound,
            width: 100,
            height: 100,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Парковки с таким адресом не найдены. Попробуйте изменить запрос.',
            style: textStyles.caption.copyWith(
              color: appColors.textSecondary,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
