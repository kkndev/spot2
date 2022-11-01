import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spot2/core/presentation/components/text_input.dart';

import '../../features/auth/apple_auth.dart';
import '/features/auth/vk_auth.dart';
import '/consts/app_images.dart';
import '/styles/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var _controller = TextEditingController();
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
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextInput(controller: _controller),
              ),
              const ElevatedButton(
                onPressed: vkAuth,
                child: Text('vkAuth'),
              ),
               ElevatedButton(
                onPressed: authApple,
                child: Text('vkAuth'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
