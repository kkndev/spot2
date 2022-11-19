import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../extensions/extensions.dart';
import 'tertiary_button.dart';

class NameListItem extends StatelessWidget {
  const NameListItem({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              name,
              style: textStyles.subtitle1,
            ),
          ),
          TertiaryButton(
            label: 'Изменить',
            onTap: () => context.router.pushNamed('changeName'),
          ),
        ],
      ),
    );
  }
}
