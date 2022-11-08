import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/features/user/presentation/bloc/user/user.dart';
import '/core/presentation/components/components.dart';

class PromoCodesPage extends StatefulWidget {
  const PromoCodesPage({Key? key}) : super(key: key);

  @override
  State<PromoCodesPage> createState() => _PromoCodesPageState();
}

class _PromoCodesPageState extends State<PromoCodesPage> {
  final TextEditingController promoCodeController = TextEditingController();
  bool isDisabled = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    promoCodeController.dispose();
    super.dispose();
  }

  onChanged(String newText) {
    print(newText);
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
                child: Column(
                  children: [
                    TextInput(
                      onClear: onClear,
                      onChanged: onChanged,
                      controller: promoCodeController,
                      errorText: context
                          .watch<UserBloc>()
                          .state
                          .activatePromoCodeResult,
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    PrimaryButton(
                      isDisabled: isDisabled,
                      label: 'активировать',
                      onTap: () => context.read<UserBloc>().add(
                            ActivatePromoCodeEvent(
                                promoCode: promoCodeController.text),
                          ),
                      // onTap: () => context.router.pushNamed('menu'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
