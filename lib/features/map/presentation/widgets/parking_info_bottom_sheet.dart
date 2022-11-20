import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spot2/consts/app_images.dart';
import 'package:spot2/core/presentation/components/circle_icon_button.dart';
import 'package:spot2/core/presentation/components/components.dart';
import 'package:spot2/extensions/extensions.dart';
import 'package:spot2/features/parking/domain/entity/parking_entity/parking_entity.dart';

import '../bloc/map/map.dart';

class ParkingInfoBottomSheet extends StatelessWidget {
  const ParkingInfoBottomSheet({
    Key? key,
    required this.parking,
  }) : super(key: key);

  final ParkingEntity parking;

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).extension<AppTextStyles>()!;
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        height: 160,
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Text(
              parking.address,
              style: textStyle.body1,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Парковка не выбрана',
              style: textStyle.body2,
            ),
            SizedBox(
              height: 28,
            ),
            TertiaryButton(
              label: 'Изменить',
              onTap: () => context.read<MapBloc>().add(
                    SetBottomSheetEvent(
                      bottomSheet: null,
                    ),
                  ),
            ),
          ],
        ),
      ),
      Positioned(
          left: 16,
          top: -60,
          child: Visibility(
            visible: true,
            child: CircleIconButton(
              iconName: AppImages.chevron,
              onTap: () => context.read<MapBloc>().add(
                    SetBottomSheetEvent(
                      bottomSheet: null,
                    ),
                  ),
            ),
          ))
    ]);
  }
}
