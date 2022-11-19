import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../extensions/extensions.dart';

class CircleIconButton extends StatelessWidget {
  const CircleIconButton({
    Key? key,
    required this.iconName,
    this.onTap,
  }) : super(key: key);

  final String iconName;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          color: appColors.backgroundGlobe,
          borderRadius: BorderRadius.circular(44),
        ),
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          child: SvgPicture.asset(
            iconName,
            width: 24,
            height: 24,
          ),
        ),
      ),
    );
  }
}
