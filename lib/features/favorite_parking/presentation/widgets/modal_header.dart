import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../consts/app_images.dart';
import '../../../../extensions/extensions.dart';

class ModalHeader extends StatelessWidget {
  const ModalHeader({
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
          style: textStyles.headline3,
        ),
        GestureDetector(
          onTap: () => Navigator.of(context).pop(),
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
