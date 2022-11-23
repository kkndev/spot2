import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:spot2/features/auth/presentation/bloc/auth/auth.dart';

import '/extensions/app_colors.dart';
import '/core/presentation/components/components.dart';
import '/extensions/app_text_styles.dart';

class GetCodePage extends StatefulWidget {
  const GetCodePage({Key? key}) : super(key: key);

  @override
  State<GetCodePage> createState() => _GetCodePageState();
}

class _GetCodePageState extends State<GetCodePage>
    with SingleTickerProviderStateMixin {
  late final TabController controller;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    controller.addListener(() {
      FocusScope.of(context).unfocus();

    });
    phoneController.text = '+7 (';
    super.initState();
  }

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
              child: Header(label: 'Вход и регистрация'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Stack(children: [
                Container(
                  height: 46,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 2,
                        color: appColors?.buttonTertiaryDisabled ??
                            Colors.transparent,
                      ),
                    ),
                  ),
                ),
                TabBar(
                  controller: controller,
                  indicatorColor: appColors?.buttonPrimaryDefault,
                  labelColor: appColors?.buttonPrimaryDefault,
                  labelStyle: textStyles?.button.copyWith(letterSpacing: 0.25),
                  unselectedLabelColor: appColors?.buttonTertiaryDisabled,
                  tabs: [
                    Tab(
                      height: 44,
                      text: "Телефон".toUpperCase(),
                    ),
                    Tab(
                      height: 44,
                      text: "Почта".toUpperCase(),
                    ),
                  ],
                ),
              ]),
            ),
            SizedBox(
              height: 400,
              child: TabBarView(
                controller: controller,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 24, bottom: 36),
                          child: TextInput(
                            controller: phoneController,
                            keyboardType: TextInputType.phone,
                            inputFormatters: [
                              MaskTextInputFormatter(
                                  mask: "+7 (###) ###-##-##"),
                            ],
                            autofocus: true,
                          ),
                        ),
                        BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            return PhoneButtonContainer(
                              phoneController: phoneController,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 24, bottom: 36),
                          child: TextInput(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            autofocus: true,
                          ),
                        ),
                        BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            return EmailButtonContainer(
                              emailController: emailController,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class PhoneButtonContainer extends StatefulWidget {
  const PhoneButtonContainer({
    Key? key,
    required this.phoneController,
  }) : super(key: key);

  final TextEditingController phoneController;

  @override
  State<PhoneButtonContainer> createState() => _PhoneButtonContainerState();
}

class _PhoneButtonContainerState extends State<PhoneButtonContainer> {
  late final TextEditingController phoneController;

  @override
  void initState() {
    phoneController = widget.phoneController;
    phoneController.addListener(() {
      // context.read<AuthBloc>().add(ClearErrorsEvent());
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
        label: 'Получить код',
        isDisabled: !(phoneController.value.text.isNotEmpty &&
            phoneController.value.text.length == 18),
        onTap: () {
          context.read<AuthBloc>().add(
                GetCodeByPhoneEvent(phone: phoneController.text),
              );
          context.read<AuthBloc>().add(
                UpdatePhoneOrEmail(newPhoneOrEmail: phoneController.text),
              );
          context.router.pushNamed('sendCode');
        });
  }
}

class EmailButtonContainer extends StatefulWidget {
  const EmailButtonContainer({
    Key? key,
    required this.emailController,
  }) : super(key: key);

  final TextEditingController emailController;

  @override
  State<EmailButtonContainer> createState() => _EmailButtonContainerState();
}

class _EmailButtonContainerState extends State<EmailButtonContainer> {
  late final TextEditingController emailController;

  @override
  void initState() {
    emailController = widget.emailController;
    emailController.addListener(() {
      // context.read<AuthBloc>().add(ClearErrorsEvent());
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
        label: 'Получить код',
        isDisabled: !(emailController.value.text.isNotEmpty &&
            isValidEmail(emailController.value.text)),
        onTap: () {
          context.read<AuthBloc>().add(
                GetCodeByEmailEvent(email: emailController.text),
              );
          context.read<AuthBloc>().add(
                UpdatePhoneOrEmail(newPhoneOrEmail: emailController.text),
              );
          context.router.pushNamed('sendCode');
        });
  }
}

bool isValidEmail(String input) {
  return RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(input);
}
