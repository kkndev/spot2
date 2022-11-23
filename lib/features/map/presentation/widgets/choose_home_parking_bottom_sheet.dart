import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spot2/consts/app_images.dart';
import 'package:spot2/core/presentation/components/circle_icon_button.dart';
import 'package:spot2/core/presentation/components/components.dart';
import 'package:spot2/extensions/extensions.dart';
import 'package:spot2/features/map/presentation/widgets/map_primary_button.dart';
import 'package:spot2/features/parking/domain/entity/parking_entity/parking_entity.dart';
import 'package:spot2/features/user/presentation/bloc/user/user.dart';

import '../../../free_parking/presentation/bloc/free_parking/free_parking_bloc.dart';
import '../../../free_parking/presentation/bloc/free_parking/free_parking_event.dart';
import '../bloc/map/map.dart';

class ChooseHomeParkingBottomSheet extends StatelessWidget {
  const ChooseHomeParkingBottomSheet({
    Key? key,
    this.parking,
  }) : super(key: key);

  final ParkingEntity? parking;

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).extension<AppTextStyles>()!;
    var appColors = Theme.of(context).extension<AppColors>()!;

    return Stack(clipBehavior: Clip.none, children: [
      Container(
        height: 172 + MediaQuery.of(context).padding.bottom,
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(
            16, 16, 16, 16 + MediaQuery.of(context).padding.bottom),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: appColors.backgroundGlobe,
        ),
        child: Column(
          children: [
            Text(
              'Выберите парковку',
              style: textStyle.body1,
            ),
            SizedBox(
              height: parking != null ? 8 : 16,
            ),
            parking != null
                ? Column(
                    children: [
                      Text(
                        parking?.address ?? '',
                        style: textStyle.subtitle1,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        parking?.favoriteName ?? '',
                        style: textStyle.caption.copyWith(
                          color: appColors.textSecondary,
                        ),
                      ),
                    ],
                  )
                : Text(
                    'Парковка не выбрана',
                    style: textStyle.body2,
                  ),
            SizedBox(
              height: parking != null ? 16 : 28,
            ),
            parking != null
                ? MapPrimaryButton(
                    label: 'Сохранить парковку',
                    onTap: () {
                      var userId = context.read<UserBloc>().state.userInfo.id;
                      context.read<FreeParkingBloc>().add(
                            CreateFreeParkingEvent(
                              userId: userId,
                              parkingId: parking?.id ?? 0,
                            ),
                          );
                      context.read<MapBloc>().add(
                            SetBottomSheetEvent(
                              bottomSheet: null,
                            ),
                          );
                    },
                  )
                : MapPrimaryButton(
                    label: 'Изменить',
                    isDisabled: true,
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
        ),
      ),
    ]);
  }
}
