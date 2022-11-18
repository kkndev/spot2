import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spot2/features/parking/presentation/bloc/parking/parking.dart';

import '../../../../core/presentation/components/components.dart';
import '../../../parking/presentation/bloc/bloc.dart';
import '../../../parking/presentation/widgets/home_list_item.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: BlocConsumer<ParkingBloc, ParkingState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 32),
                      child: Header(label: 'Подписка'),
                    ),
                    TextInput(
                      controller: searchController,
                    ),
                    PrimaryButton(
                      label: 'sarch',
                      onTap: () {
                        context.read<ParkingBloc>().add(
                              GetParkingByAddressEvent(
                                  searchValue: searchController.text),
                            );
                      },
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    state.getParkingByAddressRequestStatus.when(
                      loading: () => const CircularProgressIndicator(),
                      success: (data) => Column(
                        children: data
                            .map(
                              (element) => HomeListItem(parking: element),
                            )
                            .toList(),
                      ),
                      failure: (error) {
                        return Text(error.toString());
                      },
                      init: () => const SizedBox(),
                    )
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
