import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:spot2/features/auth2/presentation/widgets/tertiary_button.dart';
import 'package:spot2/features/free_parking/presentation/bloc/bloc.dart';
import 'package:spot2/features/free_parking/presentation/bloc/free_parking/free_parking.dart';

import '../../../free_parking/presentation/widgets/home_list_item.dart';
import '../../domain/entity/failure.dart';
import '../bloc/auth/auth_event.dart';
import '../bloc/bloc.dart';

class Auth2Page extends StatefulWidget {
  const Auth2Page({Key? key}) : super(key: key);

  @override
  State<Auth2Page> createState() => _Auth2PageState();
}

class _Auth2PageState extends State<Auth2Page> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return Column(
                  children: [
                    state.refreshUserMasterTokenRequestStatus.when(
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
                    TertiaryButton(
                      label: 'refreshUserMasterToken',
                      onTap: () => context.read<AuthBloc>().add(
                            RefreshUserMasterTokenEvent(id: 609),
                          ),
                    ),
                    Divider(
                      height: 16,
                    ),
                    state.loginToServiceRequestStatus.when(
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
                    TertiaryButton(
                      label: 'loginToService spot',
                      onTap: () => context.read<AuthBloc>().add(
                            LoginToServiceEvent(serviceName: 'spot'),
                          ),
                    ),
                    TertiaryButton(
                      label: 'loginToService image',
                      onTap: () => context.read<AuthBloc>().add(
                            LoginToServiceEvent(serviceName: 'image'),
                          ),
                    ),
                    Divider(
                      height: 16,
                    ),
                  ],
                );
              },
            ),
            BlocBuilder<FreeParkingBloc, FreeParkingState>(
              builder: (context, state) {
                return Column(
                  children: [
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
                          return Text(error.toString());
                        } else if (error is ServerFailure) {
                          return Text(error.toString());
                        } else {
                          return const Text('error.message');
                        }
                      },
                      init: () => const SizedBox(),
                    ),
                    TertiaryButton(
                      label: 'GetFreeParkingEvent',
                      onTap: () => context.read<FreeParkingBloc>().add(
                            GetFreeParkingEvent(userId: 609),
                          ),
                    ),
                    TertiaryButton(
                      label: 'set userMasterRefreshToken',
                      onTap: () async {
                        var box = await Hive.openBox('tokens');
                        box.put('userMasterRefreshToken',
                            'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0eXBlIjoidW1ydCIsImF1dGhfaWRlbnRpZmljYXRpb24iOiI4N2FkYWZjZi0zOGZhLTRlMjItOWFiMC0yZjZjOGZiZmZlZmMiLCJhbGl2ZV91bnRpbCI6IjIwMjMtMTEtMTdUMTM6Mzk6MTguODYyNTY1WiJ9.HjNWnKAtAZmen2-mJ11OuMjQajk2oE5K88xhPinlZiE');
                      },
                    ),
                    TertiaryButton(
                      label: 'reset master token',
                      onTap: () async {
                        var box = await Hive.openBox('tokens');
                        box.put('userMasterToken',
                            'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0eXBlIjoidW10IiwiYXV0aF9pZGVudGlmaWNhdGlvbiI6Ijg3YWRhZmNmLTM4ZmEtNGUyMi05YWIwLTJmNmM4ZmJmZmVmYyIsImFsaXZlX3VudGlsIjoiMjAyMi0xMS0xNlQxODo0ODoyMC43NTc3OTFaIn0.t_r2JBEqv3w5KQLvqeFEPKI2D7AVYJUQMeS1wNqR7cU');
                      },
                    ),
                    TertiaryButton(
                      label: 'reset spot token',
                      onTap: () async {
                        var box = await Hive.openBox('tokens');
                        box.put('spotMasterToken',
                            'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0eXBlIjoidXN0IiwiYXV0aF9pbmZvcm1hdGlvbiI6eyJpZCI6Ijg3YWRhZmNmLTM4ZmEtNGUyMi05YWIwLTJmNmM4ZmJmZmVmYyIsImVtYWlsIjoia29rb25zdHlhZGV2QGdtYWlsLmNvbSIsImNyZWF0ZWRfYXQiOiIyMDIyLTExLTAyVDE3OjE5OjI0LjAwMDAwMFoiLCJ1cGRhdGVkX2F0IjoiMjAyMi0xMS0xNlQxNzowMTo0OC4wMDAwMDBaIiwiaXNfY29tcGxldGVkIjp0cnVlLCJwaG9uZSI6bnVsbCwic29jaWFsIjpudWxsLCJpZF9pbl9zb2NpYWwiOm51bGwsImVtYWlsX2Zyb21fc29jaWFsIjpudWxsLCJsYXN0X2xvZ2luIjoiMjAyMi0xMS0xNiAxNzowMTo0OCIsImlzX3ByZW1pdW0iOmZhbHNlLCJhdXRoX2lkZW50aWZpY2F0aW9uIjoiODdhZGFmY2YtMzhmYS00ZTIyLTlhYjAtMmY2YzhmYmZmZWZjIiwicm9sZXMiOltdLCJwZXJtaXNzaW9ucyI6W119LCJhbGl2ZV91bnRpbCI6IjIwMjItMTEtMTZUMTg6MzU6MjAuNzg1NzM3WiJ9.fuD4xIR1RK7KfPps--7p6yxytlB-NuZWyeSekIBblC4');
                      },
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
