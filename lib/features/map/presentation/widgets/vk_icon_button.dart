import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../consts/app_images.dart';

class VkIconButton extends StatefulWidget {
  const VkIconButton({Key? key}) : super(key: key);

  @override
  State<VkIconButton> createState() => _VkIconButtonState();
}

class _VkIconButtonState extends State<VkIconButton>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late Animation _animationColor;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
    _animationColor =
        ColorTween(begin: const Color(0xFF3375F6), end: const Color(0xFF356EDD))
            .animate(_controller);
    _animation = Tween<double>(begin: 1, end: 0.85).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onTap() {}

  void onTapDown(_) {
    _controller.forward();
  }

  void onTapUp(_) {
    _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragEnd: onTapUp,
      onHorizontalDragEnd: onTapUp,
      onTapDown: onTapDown,
      onTapUp: onTapUp,
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: _animationColor.value,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(102, 109, 142, 0.3),
              spreadRadius: 0,
              blurRadius: 16,
              offset: Offset(0, 6), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(100),
        ),
        width: 72 * _animation.value,
        height: 48 * _animation.value,
        alignment: Alignment.center,
        child: SvgPicture.asset(
          AppImages.vkIcon,
          width: 26 * _animation.value,
          height: 26 * _animation.value,
        ),
      ),
    );
  }
}
