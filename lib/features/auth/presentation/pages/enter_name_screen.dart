import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/core/presentation/components/header.dart';
import '/core/presentation/components/text_input.dart';
import '/extensions/app_colors.dart';
import '/core/presentation/components/components.dart';
import '/extensions/app_text_styles.dart';
import '/features/auth/presentation/bloc/auth/auth.dart';

class EnterNamePage extends StatefulWidget {
  const EnterNamePage({Key? key}) : super(key: key);

  @override
  State<EnterNamePage> createState() => _EnterNamePageState();
}

class _EnterNamePageState extends State<EnterNamePage> {
  final TextEditingController nameController = TextEditingController();

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
                child: Header(label: 'Имя'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 36),
                      child: TextInput(controller: nameController),
                    ),
                    PrimaryButton(
                      label: 'войти',
                      onTap: () => context.router.pushNamed('sendCode'),
                    ),
                    Text(context.watch<AuthBloc>().state.userMasterToken),
                    Text(
                        context.watch<AuthBloc>().state.userMasterRefreshToken),
                    Text(context.watch<AuthBloc>().state.userSpotToken),
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
