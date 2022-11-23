import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spot2/consts/app_images.dart';
import 'package:spot2/extensions/extensions.dart';
import 'package:spot2/features/favorite_parking/presentation/bloc/bloc.dart';
import 'package:spot2/features/favorite_parking/presentation/bloc/favorite_parking/favorite_parking_event.dart';
import 'package:spot2/features/user/presentation/bloc/user/user.dart';

import '../../../parking/presentation/bloc/bloc.dart';
import '../bloc/map/map_bloc.dart';
import '../bloc/map/map_event.dart';
import 'map_modal_header.dart';
import 'map_primary_button.dart';
import 'map_secondary_button.dart';

class ParkingInfoBottomSheet extends StatefulWidget {
  const ParkingInfoBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<ParkingInfoBottomSheet> createState() => _ParkingInfoBottomSheetState();
}

class _ParkingInfoBottomSheetState extends State<ParkingInfoBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).extension<AppTextStyles>()!;
    var appColors = Theme.of(context).extension<AppColors>()!;

    var height = 144 + MediaQuery.of(context).padding.bottom;
var initPosition = 0.0;

    _updateHeight(DragUpdateDetails dragUpdateDetails) {
      print(dragUpdateDetails.delta.dy);
      print(initPosition);
      setState(() {
        initPosition=  dragUpdateDetails.delta.dy;
      });
      // if(initPosition > 50){
      //   context.read<MapBloc>().add(
      //     SetBottomSheetEvent(
      //       bottomSheet: null,
      //     ),
      //   );
      //
      // }
      // setState(() {
      //   height - initPosition;
      // });
    }

    return GestureDetector(
      onVerticalDragUpdate: (dragUpdateDetails){
        _updateHeight(dragUpdateDetails);

      },
      onVerticalDragEnd: (s) {
        // setState(() {
        //   initPosition = 0;
        // });
      },
      onTap: (){
        setState(() {
          height=100;
        });
      },
      child: Container(
        height: height,
        margin: EdgeInsets.only(bottom: Platform.isIOS ? 40 : 0),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<ParkingBloc, ParkingState>(
          listener: (context, state) {},
          buildWhen: (prev, next) => prev.parkingItem != next.parkingItem,
          builder: (context, state) {
            return Column(
              children: [
                SvgPicture.asset(
                  AppImages.roll,
                  width: 36,
                  height: 12,
                ),
                const SizedBox(
                  height: 8,
                ),
                state.getParkingItemRequestStatus.when(
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  success: (data) => Column(
                    children: [
                      MapModalHeader(label: state.parkingItem.address),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Text(
                            // state.parkingItem.name,
                      initPosition.toString(),
                            style: textStyle.caption.copyWith(
                              color: appColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            const MapPrimaryButton(
                              label: 'Smart-охрана',
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const MapPrimaryButton(
                              label: 'Трафик',
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            MapSecondaryButton(
                              iconName: AppImages.favoriteTab,
                              onTap: () {
                                var userUid =context.read<UserBloc>().state.user.uid;
                                context.read<FavoriteParkingBloc>().add(CreateFavoriteParkingEvent(userUid: userUid, parkingId: state.parkingItem.id));
                              },
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                             MapSecondaryButton(
                              iconName: AppImages.mapRoute,
                              onTap: () {
                                // context.read<MapBloc>().state.mapController.
                              },
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            MapSecondaryButton(
                              onTap: () =>
                                  context.router.pushNamed('parkingCameras'),
                              iconName: AppImages.camera,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  failure: (error) => Text(error.toString()),
                  init: () => const SizedBox(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
