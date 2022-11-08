import 'package:flutter/material.dart';

import '/core/presentation/components/components.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Header(label: 'Подписка'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
