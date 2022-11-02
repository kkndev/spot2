import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spot2/features/auth/presentation/bloc/auth/auth.dart';

import '/core/presentation/components/tertiary_button.dart';
import '/core/presentation/components/header.dart';
import '/core/presentation/components/text_input.dart';
import '/extensions/app_colors.dart';
import '/core/presentation/components/components.dart';
import '/extensions/app_text_styles.dart';

class SendCodePage extends StatefulWidget {
  const SendCodePage({Key? key}) : super(key: key);

  @override
  State<SendCodePage> createState() => _SendCodePageState();
}

class _SendCodePageState extends State<SendCodePage> {
  final TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var textStyles = Theme.of(context).extension<AppTextStyles>();
    var appColors = Theme.of(context).extension<AppColors>();
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(24.0),
                child: Header(label: 'Код подтверждения'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Отправили на ${context.watch<AuthBloc>().state.phoneOrEmail}',
                      style: textStyles?.body2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 36),
                      child: TextInput(controller: codeController),
                    ),
                    PrimaryButton(
                        label: 'отправить код',
                        onTap: () {
                          context.read<AuthBloc>().add(
                                SendCodeFromEmailEvent(
                                    code: codeController.text),
                              );
                          context.router.pushNamed('enterName');
                        }),
                    const SizedBox(
                      height: 16,
                    ),
                    TertiaryButton(
                      label: 'Отправить новый код',
                      onTap: () => context.router.pushNamed('sendCode'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
