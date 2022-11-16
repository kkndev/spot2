import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../domain/entity/failure.dart';
import '../bloc/bloc.dart';
import '../bloc/favorite_parking/favorite_parking_event.dart';
import '../widgets/favorite_parkings_modal.dart';
import '../widgets/home_list_item.dart';
import '../widgets/list_item.dart';
import '../widgets/modal_header.dart';
import '../widgets/tertiary_button.dart';

class FavoriteParkingPage extends StatefulWidget {
  const FavoriteParkingPage({Key? key}) : super(key: key);

  @override
  State<FavoriteParkingPage> createState() => _FavoriteParkingPageState();
}

class _FavoriteParkingPageState extends State<FavoriteParkingPage> {
  @override
  void initState() {
    context.read<FavoriteParkingBloc>().add(
          GetFavoriteParkingEvent(userUid: 'kokonstyadev'),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FavoriteParkingBloc, FavoriteParkingState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const ModalHeader(label: 'Избранное'),
                  const SizedBox(
                    height: 16,
                  ),
                  state.favoriteParkingRequestStatus.when(
                    loading: () => const CircularProgressIndicator(),
                    success: (data) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: data.map((e) {
                        return e.id == 1
                            ? Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: HomeListItem(parking: e),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: ListItem(parking: e),
                              );
                      }).toList(),
                    ),
                    failure: (error) {
                      if (error is UserFailure) {
                        return Text(error.message);
                      } else if (error is ServerFailure) {
                        return Text(error.message);
                      } else {
                        return const Text('error.message');
                      }
                    },
                    init: () => const SizedBox(),
                  ),
                  TertiaryButton(
                    label: 'get favorite parking',
                    onTap: () => showCupertinoModalBottomSheet(
                      context: context,
                      builder: (context) => SizedBox(
                          height: MediaQuery.of(context).size.height * 0.9,
                          child: const FavoriteParkingModal()),
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
