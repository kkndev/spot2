import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/svg.dart';

import '/consts/app_images.dart';
import '/styles/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorsPalette.backgroundGlobe,
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppImages.logo,
                width: 124,
                height: 82,
              ),
              ElevatedButton(
                onPressed: () => context.router.pushNamed('/persons'),
                child: const Text('Go to persons'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
