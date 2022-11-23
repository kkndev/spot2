import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

import '../../../../consts/app_images.dart';
import '../../../../extensions/extensions.dart';
import '../../../map/presentation/bloc/map/map_bloc.dart';
import '../../../map/presentation/bloc/map/map_event.dart';
import '../../../map/presentation/widgets/parking_info_bottom_sheet.dart';
import '../../domain/entity/parking_entity/parking_entity.dart';
import '../bloc/parking/parking_bloc.dart';
import '../bloc/parking/parking_event.dart';

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
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
        context
            .read<ParkingBloc>()
            .add(GetParkingItemEvent(parkingId: parking.id));
        context.read<MapBloc>().add(
          SetBottomSheetEvent(
            bottomSheet: ParkingInfoBottomSheet(),
          ),
        );
        context.read<MapBloc>().state.mapController?.animateCamera(
              CameraUpdate.newLatLng(
                LatLng(
                  parking.longitude,
                  parking.latitude,
                ),
              ),
            );
      },
      child: Row(
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
      ),
    );
  }
}
