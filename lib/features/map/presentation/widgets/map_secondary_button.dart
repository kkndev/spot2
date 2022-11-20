import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../extensions/extensions.dart';

class MapSecondaryButton extends StatelessWidget {
  const MapSecondaryButton({
    Key? key,
    required this.iconName,
    this.onTap,
  }) : super(key: key);

  final String iconName;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: appColors.buttonSecondaryDefault,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: SvgPicture.asset(
          iconName,
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}
