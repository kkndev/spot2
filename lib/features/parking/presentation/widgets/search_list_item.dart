import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../consts/app_images.dart';
import '../../../../extensions/extensions.dart';
import '../../domain/entity/parking_entity/parking_entity.dart';

class SearchListItem extends StatelessWidget {
  const SearchListItem({
    Key? key,
    required this.parking,
  }) : super(key: key);

  final ParkingEntity parking;

  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                parking.address,
                style: textStyles.subtitle1,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                parking.name,
                style: textStyles.caption.copyWith(
                  color: appColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
        Transform.rotate(
          angle: -pi,
          child: SvgPicture.asset(
            AppImages.chevron,
            color: appColors.iconsPrimary,
            width: 16,
            height: 16,
          ),
        ),
      ],
    );
  }
}