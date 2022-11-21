import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spot2/consts/app_images.dart';
import 'package:spot2/extensions/extensions.dart';

import '../../../parking/presentation/bloc/bloc.dart';
import 'map_modal_header.dart';
import 'map_primary_button.dart';
import 'map_secondary_button.dart';

class ParkingInfoBottomSheet extends StatelessWidget {
  const ParkingInfoBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).extension<AppTextStyles>()!;
    var appColors = Theme.of(context).extension<AppColors>()!;

    return Container(
      height: 144,
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
                loading: () => const Center(child: CircularProgressIndicator()),
                success: (data) => Column(
                  children: [
                    MapModalHeader(label: state.parkingItem.address),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Text(
                          state.parkingItem.name,
                          style: textStyle.caption.copyWith(
                            color: appColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
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
                        const MapSecondaryButton(
                          iconName: AppImages.mapRoute,
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
    );
  }
}
