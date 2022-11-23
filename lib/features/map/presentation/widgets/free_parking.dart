import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:spot2/features/map/presentation/widgets/parking_info_bottom_sheet.dart';
import 'package:spot2/features/parking/presentation/bloc/parking/parking_bloc.dart';
import 'package:spot2/features/parking/presentation/bloc/parking/parking_event.dart';

import '../../../../consts/app_images.dart';
import '../../../../extensions/extensions.dart';
import '../../../free_parking/presentation/bloc/free_parking/free_parking_bloc.dart';
import '../../../free_parking/presentation/bloc/free_parking/free_parking_state.dart';
import '../bloc/map/map_bloc.dart';
import '../bloc/map/map_event.dart';

class FreeParking extends StatelessWidget {
  const FreeParking({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var freeParkingList =
        context.watch<FreeParkingBloc>().state.freeParkingList;
    bool hasFreeParking = freeParkingList.isEmpty;
    var appColors = Theme.of(context).extension<AppColors>()!;
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;

    onTap() {
      context
          .read<ParkingBloc>()
          .add(GetParkingItemEvent(parkingId: freeParkingList[0].parkingId));
      // _mapController.animateCamera(
      //   CameraUpdate.newLatLngZoom(
      //     LatLng(
      //       freeParkingList[0].latitude ?? 0,
      //       locationCoords.longitude ?? 0,
      //     ),
      //     15,
      //   ),
      // );
      context.read<MapBloc>().add(
        SetBottomSheetEvent(
          bottomSheet: ParkingInfoBottomSheet(),
        ),
      );
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: appColors.backgroundGlobe,
        ),
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
            Text(
              context.watch<FreeParkingBloc>().state.freeParkingList.isEmpty
                  ? 'Добавить'
                  : 'Нет мест',
              style: textStyles.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}
