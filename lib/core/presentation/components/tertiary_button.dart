import 'package:flutter/material.dart';

import '/extensions/app_colors.dart';
import '/extensions/app_text_styles.dart';

class TertiaryButton extends StatefulWidget {
  const TertiaryButton({
    super.key,
    required this.label,
    this.onTap,
    this.isDisabled = false,
  });

  final String label;
  final bool isDisabled;
  final void Function()? onTap;

  @override
  State<TertiaryButton> createState() => _TertiaryButtonState();
}

class _TertiaryButtonState extends State<TertiaryButton> {
  late bool isDisabled;

  @override
  void initState() {
    isDisabled = widget.isDisabled;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>();
    var textStyles = Theme.of(context).extension<AppTextStyles>();
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        width: double.infinity,
        child: Text(
          widget.label.toUpperCase(),
          textAlign: TextAlign.center,
          style: textStyles?.button.copyWith(
            color: isDisabled
                ? appColors?.buttonTertiaryDisabled
                : appColors?.buttonTertiaryText,
          ),
        ),
      ),
    );
  }
}
