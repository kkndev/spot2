import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/presentation/components/components.dart';
import '../bloc/user/user.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: BlocConsumer<UserBloc, UserState>(
            listener: (_, state) {
              print(state.userInfo);
            },
            listenWhen: (prev, next) =>
                prev.whoamiRequestStatus != next.whoamiRequestStatus,
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    const Header(label: 'Профиль'),
                    const SizedBox(
                      height: 32,
                    ),
                    TextInput(
                      controller: nameController,
                      errorText: state.activatePromoCodeResult,
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    Text(context
                        .watch<UserBloc>()
                        .state
                        .activatePromoCodeResult),
                    state.activatePromoCodeRequestStatus.when(
                      loading: () => const CircularProgressIndicator(),
                      success: (data) => Text(data),
                      failure: (error) {
                        return Text(error.message);
                      },
                      init: () => const SizedBox(),
                    ),
                    PrimaryButton(
                      label: 'активировать',
                      onTap: () {
                        context.read<UserBloc>().add(
                              UpdateUserEvent(name: nameController.text),
                            );
                        FocusScope.of(context).unfocus();
                      },
                    ),
                    PrimaryButton(
                      label: 'активировать',
                      onTap: () {
                        context.read<UserBloc>().add(WhoamiEvent());
                        FocusScope.of(context).unfocus();
                      },
                    ),
                    PrimaryButton(
                      label: 'min app version: ${state.minAppVersion}',
                      onTap: () {
                        context.read<UserBloc>().add(GetMinAppVersionEvent());
                        FocusScope.of(context).unfocus();
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
