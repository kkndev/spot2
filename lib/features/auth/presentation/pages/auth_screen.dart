import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '/extensions/app_colors.dart';
import '/features/auth/presentation/widgets/apple_icon_button.dart';
import '/features/auth/presentation/widgets/vk_icon_button.dart';
import '../widgets/google_icon_button.dart';
import '/core/presentation/components/components.dart';
import '/extensions/app_text_styles.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyles = Theme.of(context).extension<AppTextStyles>();
    var appColors = Theme.of(context).extension<AppColors>();
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: width * (width / 375),
                child: const RiveAnimation.asset('assets/images/auth.riv'),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 24, right: 24, top: 16, bottom: 24),
                child: Text(
                  'Знаем, где припарковаться',
                  style: textStyles?.headline1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: PrimaryButton(
                  label: 'Вход и регистрация',
                  onTap: () => context.router.pushNamed('getCode'),
                  // onTap: () => context.router.pushNamed('menu'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                  left: 24,
                  right: 24,
                  bottom: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GoogleIconButton(
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    AppleIconButton(
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    VkIconButton(
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Text(
                  'При входе вы принимаете условия пользовательского\n соглашения и политику обработки данных.',
                  style: textStyles?.overline.copyWith(
                      color: appColors?.textSecondary, letterSpacing: 0.25),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
