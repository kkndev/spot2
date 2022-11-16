import 'package:flutter/material.dart';

import '../../../../extensions/extensions.dart';

class TertiaryButton extends StatelessWidget {
  const TertiaryButton({
    Key? key,
    required this.label,
    this.onTap,
  }) : super(key: key);

  final String label;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Text(
          label,
          style: textStyles.subtitle2.copyWith(
            color: appColors.buttonPrimaryDefault,
          ),
        ),
      ),
    );
  }
}
