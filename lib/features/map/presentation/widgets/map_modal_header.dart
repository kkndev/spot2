import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spot2/features/map/presentation/bloc/map/map.dart';

import '../../../../consts/app_images.dart';
import '../../../../extensions/extensions.dart';
import '../../../parking/presentation/bloc/parking/parking.dart';
import '../../../parking/presentation/bloc/parking/parking_bloc.dart';

class MapModalHeader extends StatelessWidget {
  const MapModalHeader({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: textStyles.subtitle1,
        ),
        GestureDetector(
          onTap: () {
            context.read<MapBloc>().add(SetBottomSheetEvent(bottomSheet: null));
            context.read<ParkingBloc>().add(GetParkingEvent());
          },
          child: SvgPicture.asset(
            AppImages.closeCircle,
            width: 28,
            height: 28,
          ),
        ),
      ],
    );
  }
}
