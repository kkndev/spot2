import 'package:flutter/material.dart';

import '../../../../extensions/extensions.dart';
import 'primary_button.dart';
import 'tertiary_button.dart';

class LogoutModal extends StatelessWidget {
  const LogoutModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appColors = Theme.of(context).extension<AppColors>()!;
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 28),
        decoration: BoxDecoration(
          color: appColors.backgroundGlobe,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Выйти из аккаунта?',
              style: textStyles.subtitle1,
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TertiaryButton(
                  label: 'Отмена',
                  onTap: () => Navigator.of(context).pop(),
                ),
                const SizedBox(
                  width: 16,
                ),
                const PrimaryButton(
                  label: 'Удалить',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
