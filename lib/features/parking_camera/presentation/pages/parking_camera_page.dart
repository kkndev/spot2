import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../free_parking/presentation/widgets/tertiary_button.dart';
import '../bloc/bloc.dart';
import '../bloc/parking_camera/parking_camera_event.dart';

class FreeParkingPage extends StatefulWidget {
  const FreeParkingPage({Key? key}) : super(key: key);

  @override
  State<FreeParkingPage> createState() => _FreeParkingPageState();
}

class _FreeParkingPageState extends State<FreeParkingPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<ParkingCameraBloc, ParkingCameraState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  state.parkingCameraRequestStatus.when(
                    loading: () => const CircularProgressIndicator(),
                    success: (data) => Image.network(data[0]),
                    failure: (error) => Text(error.toString()),
                    init: () => const SizedBox(),
                  ),
                  TertiaryButton(
                    label: 'get Image',
                    onTap: () => context.read<ParkingCameraBloc>().add(
                        GetParkingCameraEvent(
                            cameraUid: 'R70_C004', parkingUid: 'R70_P005')),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
