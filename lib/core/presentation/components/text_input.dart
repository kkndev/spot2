import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '/consts/app_images.dart';
import '/extensions/app_text_styles.dart';
import '/styles/colors.dart';

class TextInput extends StatelessWidget {
  TextInput({
    Key? key,
    required this.controller,
    this.errorText = '',
    this.onChanged,
    this.onClear,
  }) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  final TextEditingController controller;
  final String errorText;
  final Function(String newText)? onChanged;
  final Function()? onClear;

  @override
  Widget build(BuildContext context) {
    var textStyles = Theme.of(context).extension<AppTextStyles>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          onEditingComplete: () {},
          onChanged: onChanged,
          style: textStyles?.body1,
          controller: controller,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.only(top: 12, bottom: 12, left: 20, right: 0),
            suffixIcon: controller.text.isNotEmpty
                ? GestureDetector(
                    onTap: onClear,
                    child: Container(
                      color: Colors.transparent,
                      padding: const EdgeInsets.only(
                        bottom: 12,
                        top: 12,
                        right: 0,
                      ),
                      child: SizedBox(
                          height: 24,
                          width: 24,
                          child: SvgPicture.asset(
                            AppImages.close,
                            width: 24,
                            height: 24,
                          )),
                    ),
                  )
                : null,
            isDense: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: AppColorsPalette.strokeDefault,
                width: 2,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: AppColorsPalette.statusError,
                width: 2,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:  BorderSide(
                color: errorText.isNotEmpty? AppColorsPalette.strokeError:AppColorsPalette.strokeFocused,
                width: 2,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: AppColorsPalette.strokeError,
                width: 2,
              ),
            ),
          ),
        ),
        if (errorText.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              errorText,
              style: textStyles?.caption
                  .copyWith(color: AppColorsPalette.statusError),
            ),
          ),
      ],
    );
  }
}
