import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spot2/extensions/extensions.dart';

import '../../../../core/presentation/components/components.dart';
import '../bloc/user/user.dart';
import '../widgets/widgets.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;

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
                    const Header(label: 'Профиль'),
                    const SizedBox(
                      height: 32,
                    ),
                    NameListItem(
                      name: state.user.name,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    PhoneListItem(
                      phone: state.user.name,
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
