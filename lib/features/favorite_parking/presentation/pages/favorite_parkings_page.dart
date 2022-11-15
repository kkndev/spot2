import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/presentation/components/primary_button.dart';
import '../bloc/bloc.dart';
import '../bloc/favorite_parking/favorite_parking_event.dart';

class FavoriteParkingPage extends StatelessWidget {
  const FavoriteParkingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FavoriteParkingBloc, FavoriteParkingState>(
          builder: (context, state) {
            return Center(
              child: Column(
                children: [
                  state.favoriteParkingRequestStatus.when(
                    loading: () => const CircularProgressIndicator(),
                    success: (data) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: data
                          .map((e) => ListTile(
                                title: Text(e.name),
                                subtitle: Text(e.userUid),
                              ))
                          .toList(),
                    ),
                    failure: (error) => Text(error.toString()),
                    init: () => const SizedBox(),
                  ),
                  PrimaryButton(
                    label: 'get favorite parking',
                    onTap: () => context.read<FavoriteParkingBloc>().add(
                          GetFavoriteParkingEvent(userUid: 'kokonstyadev'),
                        ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
