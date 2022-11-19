import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../consts/app_images.dart';
import '../../../../extensions/extensions.dart';
import '../bloc/bloc.dart';

class FilterParkingModal extends StatefulWidget {
  const FilterParkingModal({Key? key}) : super(key: key);

  @override
  State<FilterParkingModal> createState() => _FilterParkingModalState();
}

class _FilterParkingModalState extends State<FilterParkingModal> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // var appColors = Theme.of(context).extension<AppColors>()!;
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;
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
                    Text(
                      'Парковки на карте',
                      style: textStyles.subtitle1,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Available(
                  isActive: true,
                ),
                const SizedBox(
                  height: 16,
                ),
                const UnAvailable(
                  isActive: false,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Private(
                  isActive: true,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Available extends StatelessWidget {
  const Available({Key? key, this.isActive = false}) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              AppImages.pinAvailable,
              width: 19,
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Доступные',
                style: textStyles.body2,
              ),
            ),
          ],
        ),
        SvgPicture.asset(
          isActive ? AppImages.checkOn : AppImages.checkOff,
          width: 24,
          height: 24,
        ),
      ],
    );
  }
}

class UnAvailable extends StatelessWidget {
  const UnAvailable({Key? key, this.isActive = false}) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              AppImages.pinDisabled,
              width: 19,
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Временно недоступные',
                style: textStyles.body2,
              ),
            ),
          ],
        ),
        SvgPicture.asset(
          isActive ? AppImages.checkOn : AppImages.checkOff,
          width: 24,
          height: 24,
        ),
      ],
    );
  }
}

class Private extends StatelessWidget {
  const Private({Key? key, this.isActive = false}) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              AppImages.pinPrivate,
              width: 19,
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Приватные',
                style: textStyles.body2,
              ),
            ),
          ],
        ),
        SvgPicture.asset(
          isActive ? AppImages.checkOn : AppImages.checkOff,
          width: 24,
          height: 24,
        ),
      ],
    );
  }
}
