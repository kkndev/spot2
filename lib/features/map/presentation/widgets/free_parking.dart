import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../consts/app_images.dart';
import '../../../../extensions/extensions.dart';
import '../../../free_parking/presentation/bloc/free_parking/free_parking_bloc.dart';
import '../../../free_parking/presentation/bloc/free_parking/free_parking_state.dart';

class FreeParking extends StatelessWidget {
  const FreeParking({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;
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
              'Нет мест',
              style: textStyles.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}
