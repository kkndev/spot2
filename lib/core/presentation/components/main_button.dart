import 'package:flutter/material.dart';
import '/styles/colors.dart';

class MainButton extends StatelessWidget {
  final String label;
  final void Function()? onTap;

  const MainButton({
    super.key,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          color: AppColorsPalette.buttonPrimaryDefault,
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: 'Roboto',
            color: AppColorsPalette.buttonPrimaryText,
            fontSize: 14,
            height: 1.43,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
