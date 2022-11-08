import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '/core/presentation/components/components.dart';

class PromoCodesPage extends StatefulWidget {
  const PromoCodesPage({Key? key}) : super(key: key);

  @override
  State<PromoCodesPage> createState() => _PromoCodesPageState();
}

class _PromoCodesPageState extends State<PromoCodesPage> {
  late final TextEditingController promoCodeController;

  @override
  void initState() {
    promoCodeController = TextEditingController();
    super.initState();
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
                    TextInput(controller: promoCodeController),
                    const SizedBox(
                      height: 36,
                    ),
                    PrimaryButton(
                      // isDisabled: promoCodeController.value.text == '',
                      label: 'активировать',
                      // onTap: () => context.router.pushNamed('getCode'),
                      onTap: () => context.router.pushNamed('menu'),
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
