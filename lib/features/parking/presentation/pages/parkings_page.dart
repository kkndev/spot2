import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entity/failure.dart';
import '../bloc/bloc.dart';
import '../bloc/parking/parking_event.dart';
import '../widgets/home_list_item.dart';

class ParkingPage extends StatefulWidget {
  const ParkingPage({Key? key}) : super(key: key);

  @override
  State<ParkingPage> createState() => _ParkingPageState();
}

class _ParkingPageState extends State<ParkingPage> {
  @override
  void initState() {
    context.read<ParkingBloc>().add(
          GetParkingEvent(),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<ParkingBloc, ParkingState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  state.getParkingRequestStatus.when(
                    loading: () => const CircularProgressIndicator(),
                    success: (data) => HomeListItem(parking: data[0]),
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
