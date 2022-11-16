import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../consts/app_images.dart';
import '../../../../extensions/extensions.dart';
import '../../domain/entity/parking_entity/parking_entity.dart';

class HomeListItem extends StatefulWidget {
  const HomeListItem({
    Key? key,
    required this.parking,
  }) : super(key: key);

  final ParkingEntity parking;

  @override
  State<HomeListItem> createState() => _HomeListItemState();
}

class _HomeListItemState extends State<HomeListItem> {
  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              SvgPicture.asset(
                AppImages.home,
                width: 24,
                height: 24,
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.parking.latitude.toString(),
                      style: textStyles.subtitle1,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      widget.parking.longitude.toString(),
                      style: textStyles.caption.copyWith(
                        color: appColors.textSecondary,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      widget.parking.name,
                      style: textStyles.caption.copyWith(
                        color: appColors.textSecondary,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      widget.parking.freePlacesCount.toString(),
                      style: textStyles.caption.copyWith(
                        color: appColors.textSecondary,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      widget.parking.address,
                      style: textStyles.caption.copyWith(
                        color: appColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
