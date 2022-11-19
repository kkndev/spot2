import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math';

import '/consts/app_images.dart';
import '/extensions/extensions.dart';

class MenuListItem extends StatelessWidget {
  const MenuListItem({
    Key? key,
    this.onTap,
    required this.label,
    this.isDanger = false,
    this.hasChevron = true,
  }) : super(key: key);

  final void Function()? onTap;
  final String label;
  final bool isDanger;
  final bool hasChevron;

  @override
  Widget build(BuildContext context) {
    var textStyles = Theme.of(context).extension<AppTextStyles>();
    var appColors = Theme.of(context).extension<AppColors>();
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: isDanger
                  ? textStyles?.subtitle1
                      .copyWith(color: appColors?.statusError)
                  : textStyles?.subtitle1,
            ),
            if (hasChevron)
              Transform.rotate(
                angle: -pi,
                child: SvgPicture.asset(
                  AppImages.chevron,
                  color: appColors?.iconsPrimary,
                  width: 16,
                  height: 16,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
