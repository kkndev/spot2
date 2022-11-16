import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../consts/app_images.dart';
import '../bloc/bloc.dart';
import '../widgets/home_list_item.dart';
import '../widgets/list_item.dart';
import '../widgets/modal_header.dart';

class FavoriteParkingModal extends StatelessWidget {
  const FavoriteParkingModal({Key? key}) : super(key: key);

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
                      return e.id == 1
                          ? Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: HomeListItem(parking: e),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: ListItem(parking: e),
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
