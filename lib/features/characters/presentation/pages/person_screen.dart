import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spot2/features/characters/domain/usecases/get_all_persons.dart';
import 'package:spot2/features/characters/presentation/bloc/person_list_cubit/person_list_cubit.dart';

import '/features/characters/presentation/widgets/custom_search_delegate.dart';
import '/features/characters/presentation/widgets/persons_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Characters'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.white,
            onPressed: () {
              // context.read<PersonListCubit>().loadPerson();
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
          )
        ],
      ),
      body: PersonsList(),
    );
  }
}
