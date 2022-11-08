import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/features/auth/presentation/bloc/auth/auth.dart';
import '/features/user/presentation/bloc/user/user.dart';
import '/features/characters/presentation/bloc/search_bloc/search_bloc.dart';
import '/injection_container.dart';
import '/features/characters/presentation/bloc/person_list_cubit/person_list_cubit.dart';

class RootScreen extends StatelessWidget implements AutoRouteWrapper {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }

  @override
  Widget wrappedRoute(context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PersonListCubit>(
            create: (context) => sl<PersonListCubit>()..loadPerson()),
        BlocProvider<PersonSearchBloc>(
            create: (context) => sl<PersonSearchBloc>()),
        BlocProvider<AuthBloc>(create: (context) => sl<AuthBloc>()),
        BlocProvider<UserBloc>(create: (context) => sl<UserBloc>()),
      ],
      child: this,
    );
  }
}
