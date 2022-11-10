import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '/consts/app_images.dart';
import '/extensions/extensions.dart';

class ErrorToast extends StatelessWidget {
  const ErrorToast({
    Key? key,
    required this.text,
    required this.fToast,
  }) : super(key: key);

  final String text;
  final FToast fToast;

  @override
  Widget build(BuildContext context) {
    var textStyles = Theme.of(context).extension<AppTextStyles>();
    var appColors = Theme.of(context).extension<AppColors>();
    return GestureDetector(
      onTap: () => fToast.removeCustomToast(),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: appColors?.statusError,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              AppImages.alertCheck,
              color: appColors?.textPrimaryInverse,
              width: 16,
              height: 16,
            ),
            const SizedBox(
              width: 8.0,
            ),
            Expanded(
              child: Text(
                text,
                style: textStyles?.caption.copyWith(
                    color: appColors?.textPrimaryInverse, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
