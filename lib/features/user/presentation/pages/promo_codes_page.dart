import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:spot2/core/presentation/components/error_toast.dart';

import '/features/user/presentation/bloc/user/user.dart';
import '/core/presentation/components/components.dart';
import '../../domain/entity/entities.dart';

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
                        PrimaryButton(
                          isDisabled: state.activatePromoCodeRequestStatus ==
                              const RequestStatus<String>.loading(),
                          label: 'активировать',
                          onTap: () {
                            context.read<UserBloc>().add(
                                  ActivatePromoCodeEvent(
                                      promoCode: promoCodeController.text),
                                );
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
