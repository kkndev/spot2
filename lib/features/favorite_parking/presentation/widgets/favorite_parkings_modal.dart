import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spot2/features/user/presentation/bloc/user/user.dart';

import '../../../../consts/app_images.dart';
import '../bloc/bloc.dart';
import '../bloc/favorite_parking/favorite_parking_event.dart';
import '../widgets/home_list_item.dart';
import '../widgets/list_item.dart';
import '../widgets/modal_header.dart';

class FavoriteParkingModal extends StatefulWidget {
  const FavoriteParkingModal({Key? key}) : super(key: key);

  @override
  State<FavoriteParkingModal> createState() => _FavoriteParkingModalState();
}

class _FavoriteParkingModalState extends State<FavoriteParkingModal> {
  @override
  void initState() {
    var userUid= context.read<UserBloc>().state.user.uid;
    print(userUid);
    context.read<FavoriteParkingBloc>().add(
          GetFavoriteParkingEvent(
              userUid: userUid),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<FavoriteParkingBloc, FavoriteParkingState>(
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
                const ModalHeader(label: 'Избранное'),
                const SizedBox(
                  height: 16,
                ),
                state.favoriteParkingRequestStatus.when(
                  loading: () => const CircularProgressIndicator(),
                  success: (data) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: data.map((e) {
                      return  Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: HomeListItem(parking: e),
                            );

                    }).toList(),
                  ),
                  failure: (error) => Text(error.toString()),
                  init: () => const SizedBox(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
