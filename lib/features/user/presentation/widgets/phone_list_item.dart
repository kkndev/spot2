import 'package:flutter/material.dart';

import '../../../../extensions/extensions.dart';

class PhoneListItem extends StatelessWidget {
  const PhoneListItem({
    Key? key,
    required this.phone,
  }) : super(key: key);

  final String phone;

  @override
  Widget build(BuildContext context) {
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              phone,
              style: textStyles.subtitle1,
            ),
          ),
        ),
      ],
    );
  }
}
