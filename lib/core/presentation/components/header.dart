import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/consts/app_images.dart';
import '/extensions/app_colors.dart';
import '/extensions/app_text_styles.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    var textStyles = Theme.of(context).extension<AppTextStyles>();
    var appColors = Theme.of(context).extension<AppColors>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => context.router.pop(),
          child: Container(
            color: Colors.transparent,
            child: SvgPicture.asset(
              AppImages.chevron,
              width: 28,
              height: 28,
            ),
          ),
        ),
        Text(
          label,
          style: textStyles?.headline3,
        ),
        const SizedBox(
          width: 28,
          height: 28,
        ),
      ],
    );
  }
}
