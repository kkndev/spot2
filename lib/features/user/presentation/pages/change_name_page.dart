import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/presentation/components/components.dart';
import '../bloc/user/user.dart';

class ChangeNamePage extends StatefulWidget {
  const ChangeNamePage({Key? key}) : super(key: key);

  @override
  State<ChangeNamePage> createState() => _ChangeNamePageState();
}

class _ChangeNamePageState extends State<ChangeNamePage> {
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
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    const Header(label: 'Имя'),
                    const SizedBox(
                      height: 32,
                    ),
                    TextInput(
                      controller: nameController,
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    PrimaryButton(
                      label: 'сохранить',
                      onTap: () {
                        context.read<UserBloc>().add(
                            UpdateUserNameEvent(name: nameController.text));
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
