import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math';

import '/consts/app_images.dart';
import '/extensions/extensions.dart';

class ProfileListItem extends StatelessWidget {
  const ProfileListItem({
    Key? key,
    required this.onTap,
    required this.name,
    required this.telephone,
  }) : super(key: key);

  final void Function() onTap;
  final String name;
  final String telephone;

  @override
  Widget build(BuildContext context) {
    var textStyles = Theme.of(context).extension<AppTextStyles>();
    var appColors = Theme.of(context).extension<AppColors>();
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  AppImages.avatarPlaceholder,
                  height: 40,
                  width: 40,
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  children: [
                    Text(
                      name,
                      style: textStyles?.subtitle1,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      telephone,
                      style: textStyles?.caption,
                    ),
                  ],
                ),
              ],
            ),
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