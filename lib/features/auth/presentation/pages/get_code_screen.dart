import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spot2/core/data/dto/dto.dart';
import 'package:spot2/features/auth/presentation/bloc/auth/auth.dart';

import '/core/presentation/components/header.dart';
import '/core/presentation/components/text_input.dart';
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
                          child: TextInput(controller: phoneController),
                        ),
                        BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            return PrimaryButton(
                                label: 'Получить код',
                                isDisabled: state.requestStatus ==
                                    const RequestStatus.loading(),
                                onTap: () {
                                  context.read<AuthBloc>().add(
                                        UpdatePhoneOrEmail(
                                            newPhoneOrEmail:
                                                emailController.text),
                                      );
                                  context.read<AuthBloc>().add(
                                        GetCodeByPhoneEvent(
                                            phone: phoneController.text),
                                      );
                                  context.router.pushNamed('sendCode');
                                });
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
                          child: TextInput(controller: emailController),
                        ),
                        BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            return PrimaryButton(
                                label: 'Получить код',
                                isDisabled: state.requestStatus ==
                                    const RequestStatus.loading(),
                                onTap: () {
                                  context.read<AuthBloc>().add(
                                        GetCodeByEmailEvent(
                                            email: emailController.text),
                                      );
                                  context.read<AuthBloc>().add(
                                        UpdatePhoneOrEmail(
                                            newPhoneOrEmail:
                                                emailController.text),
                                      );
                                  context.router.pushNamed('sendCode');
                                });
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
