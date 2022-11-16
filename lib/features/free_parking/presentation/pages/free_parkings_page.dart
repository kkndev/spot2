import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entity/failure.dart';
import '../bloc/bloc.dart';
import '../bloc/free_parking/free_parking_event.dart';
import '../widgets/home_list_item.dart';

class FreeParkingPage extends StatefulWidget {
  const FreeParkingPage({Key? key}) : super(key: key);

  @override
  State<FreeParkingPage> createState() => _FreeParkingPageState();
}

class _FreeParkingPageState extends State<FreeParkingPage> {
  @override
  void initState() {
    context.read<FreeParkingBloc>().add(
          GetFreeParkingEvent(userId: 13374),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FreeParkingBloc, FreeParkingState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  state.getFreeParkingRequestStatus.when(
                    loading: () => const CircularProgressIndicator(),
                    success: (data) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: data.map((e) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: HomeListItem(parking: e),
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
                  Divider(),
                  state.deleteFreeParkingRequestStatus.when(
                    loading: () => const CircularProgressIndicator(),
                    success: (data) => Text(data),
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
                  Divider(),
                  state.createFreeParkingRequestStatus.when(
                    loading: () => const CircularProgressIndicator(),
                    success: (data) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: data.map((e) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: HomeListItem(parking: e),
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
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
