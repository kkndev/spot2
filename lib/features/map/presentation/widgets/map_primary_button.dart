import 'package:flutter/material.dart';

import '../../../../extensions/extensions.dart';

class MapPrimaryButton extends StatelessWidget {
  const MapPrimaryButton({
    Key? key,
    required this.label,
    this.isDisabled = false,
    this.onTap,
  }) : super(key: key);

  final String label;
  final bool isDisabled;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isDisabled
              ? appColors.buttonPrimaryDisabled
              : appColors.buttonPrimaryDefault,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Text(
          label,
          style: textStyles.subtitle2.copyWith(
            color: appColors.buttonPrimaryText,
          ),
        ),
      ),
    );
  }
}
