import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:spot2/core/presentation/components/error_toast.dart';

import '/features/user/presentation/bloc/user/user.dart';
import '/core/presentation/components/components.dart';

class PromoCodesPage extends StatefulWidget {
  const PromoCodesPage({Key? key}) : super(key: key);

  @override
  State<PromoCodesPage> createState() => _PromoCodesPageState();
}

class _PromoCodesPageState extends State<PromoCodesPage> {
  final TextEditingController promoCodeController = TextEditingController();
  late FToast fToast;

  bool isDisabled = true;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  @override
  void deactivate() {
    context.read<UserBloc>().add(ClearPromoCodeEvent());
    fToast.removeCustomToast();
    super.deactivate();
  }

  @override
  void dispose() {
    super.dispose();
    promoCodeController.dispose();
  }

  _showToast(String text) {
    fToast.showToast(
        child: ErrorToast(text: text, fToast: fToast),
        toastDuration: const Duration(seconds: 5),
        positionedToastBuilder: (context, child) {
          return Positioned(
            bottom: 24.0,
            left: 24.0,
            right: 24.0,
            child: child,
          );
        });
  }

  onChanged(String newText) {
    context.read<UserBloc>().add(ClearPromoCodeEvent());
    if (newText == '') {
      setState(() {
        isDisabled = true;
      });
    } else {
      setState(() {
        isDisabled = false;
      });
    }
  }

  onClear() {
    promoCodeController.clear();
    setState(() {
      isDisabled = true;
    });
    context.read<UserBloc>().add(ClearPromoCodeEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(24.0),
                child: Header(label: 'Промокоды'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: BlocConsumer<UserBloc, UserState>(
                  listenWhen: (prevState, nextState) {
                    return prevState.activatePromoCodeResult !=
                        nextState.activatePromoCodeResult;
                  },
                  listener: (context, state) {
                    if (state.activatePromoCodeResult ==
                        'Промокод недействителен') {
                      _showToast('Промокод недействителен');
                    }
                  },
                  builder: (context, state) {
                    return Column(
                      children: [
                        TextInput(
                          onClear: onClear,
                          onChanged: onChanged,
                          controller: promoCodeController,
                          errorText: state.activatePromoCodeResult,
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        Text(context
                            .watch<UserBloc>()
                            .state
                            .activatePromoCodeResult),
                        state.activatePromoCodeRequestStatus.when(
                          loading: () => const CircularProgressIndicator(),
                          success: (data) => Text(data),
                          failure: (error) {
                            return Text(error.message);
                          },
                          init: () => const SizedBox(),
                        ),
                        PrimaryButton(
                            isDisabled: isDisabled,
                            label: 'активировать',
                            onTap: () {
                              context.read<UserBloc>().add(
                                    ActivatePromoCodeEvent(
                                        promoCode: promoCodeController.text),
                                  );
                              FocusScope.of(context).unfocus();
                            }),
                        TertiaryButton(
                          label: 'reset master token',
                          onTap: () async {
                            var box = await Hive.openBox('tokens');
                            box.put('masterToken',
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
                        TertiaryButton(
                          label: 'auth2',
                          onTap: () {
                            context.router.pushNamed('auth2');
                          },
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
