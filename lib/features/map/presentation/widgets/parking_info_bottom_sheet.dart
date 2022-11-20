import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spot2/consts/app_images.dart';
import 'package:spot2/extensions/extensions.dart';
import 'package:spot2/features/parking/domain/entity/parking_entity/parking_entity.dart';

import '../../../favorite_parking/presentation/widgets/modal_header.dart';
import 'map_modal_header.dart';
import 'map_primary_button.dart';
import 'map_secondary_button.dart';

class ParkingInfoBottomSheet extends StatelessWidget {
  const ParkingInfoBottomSheet({
    Key? key,
    required this.parking,
  }) : super(key: key);

  final ParkingEntity parking;

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).extension<AppTextStyles>()!;
    var appColors = Theme.of(context).extension<AppColors>()!;

    return Container(
      height: 144,
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
          MapModalHeader(label: parking.address),
          SizedBox(
            height: 6,
          ),
          Row(
            children: [
              Text(
                parking.favoriteName,
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
              MapPrimaryButton(
                label: 'Smart-охрана',
              ),
              SizedBox(
                width: 8,
              ),
              MapPrimaryButton(
                label: 'Трафик',
              ),
              SizedBox(
                width: 8,
              ),
              MapSecondaryButton(
                iconName: AppImages.mapRoute,
              ),
              SizedBox(
                width: 8,
              ),
              MapSecondaryButton(
                iconName: AppImages.camera,
              ),
            ],
          )
        ],
      ),
    );
  }
}
