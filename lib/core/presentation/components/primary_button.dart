import 'package:flutter/material.dart';

import '/extensions/app_colors.dart';
import '/extensions/app_text_styles.dart';

class PrimaryButton extends StatefulWidget {
  const PrimaryButton({
    super.key,
    required this.label,
    this.onTap,
    this.isDisabled = false,
  });

  final String label;
  final bool isDisabled;
  final void Function()? onTap;

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton>
    with TickerProviderStateMixin {
  late Animation _animationColor;
  late Animation _animationColorDisable;
  late AnimationController _controller;
  late AnimationController _controllerDisable;
  late bool isDisabled;
  @override
  void initState() {
    isDisabled = widget.isDisabled;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant PrimaryButton oldWidget) {
    if (oldWidget.isDisabled && !widget.isDisabled) {
      _controllerDisable.reverse();
    } else if (!oldWidget.isDisabled && widget.isDisabled) {
      _controllerDisable.forward();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    var colors = Theme.of(context).extension<AppColors>();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
    _animationColor = ColorTween(
      begin: colors?.buttonPrimaryDefault,
      end: colors?.buttonPrimaryPressed,
    ).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controllerDisable = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
    _animationColorDisable = ColorTween(
      begin: colors?.buttonPrimaryDefault,
      end: colors?.buttonPrimaryDisabled,
    ).animate(_controllerDisable)
      ..addListener(() {
        setState(() {});
      });
    super.didChangeDependencies();
  }

  void onTapDown(_) {
    _controller.forward();
  }

  void onTapUp(_) {
    _controller.reverse();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // var colors = Theme.of(context).extension<AppColors>();
    var textStyles = Theme.of(context).extension<AppTextStyles>();
    return GestureDetector(
      onVerticalDragEnd: onTapUp,
      onHorizontalDragEnd: onTapUp,
      onTapDown: onTapDown,
      onTapUp: onTapUp,
      onTap: widget.onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(102, 109, 142, 0.26),
              blurRadius: 16,
              offset: Offset(0, 8), // changes position of shadow
            ),
          ],
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          color:
              isDisabled ? _animationColorDisable.value : _animationColor.value,
        ),
        child: Text(
          widget.label.toUpperCase(),
          textAlign: TextAlign.center,
          style: textStyles?.button,
        ),
      ),
    );
  }
}
