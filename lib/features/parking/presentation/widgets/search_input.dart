import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../consts/app_images.dart';
import '../../../../extensions/extensions.dart';

class SearchInput extends StatelessWidget {
  SearchInput({
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
    var appColors = Theme.of(context).extension<AppColors>()!;
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          onEditingComplete: () {},
          onChanged: onChanged,
          style: textStyles.body2,
          controller: controller,
          decoration: InputDecoration(
            hintText: 'Введите адрес парковки',
            filled: true,
            fillColor: appColors.backgroundFields,
            contentPadding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 0, right: 0),
            prefixIcon: Container(
              color: Colors.transparent,
              padding: const EdgeInsets.only(
                bottom: 10,
                top: 10,
                right: 0,
              ),
              child: SizedBox(
                height: 20,
                width: 20,
                child: SvgPicture.asset(
                  AppImages.searchInput,
                  width: 20,
                  height: 20,
                ),
              ),
            ),
            suffixIcon: controller.text.isNotEmpty
                ? GestureDetector(
                    onTap: onClear,
                    child: Container(
                      color: Colors.transparent,
                      padding: const EdgeInsets.only(
                        bottom: 10,
                        top: 10,
                        right: 0,
                      ),
                      child: SizedBox(
                          height: 20,
                          width: 20,
                          child: SvgPicture.asset(
                            AppImages.closeCircle,
                            width: 20,
                            height: 20,
                          )),
                    ),
                  )
                : null,
            isDense: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: appColors.backgroundFields,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: appColors.backgroundFields,
                width: 1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
