import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:spot2/features/auth/presentation/pages/enter_name_screen.dart';
import 'package:spot2/features/map/presentation/pages/map_screen.dart';

import '/features/auth/presentation/pages/get_code_screen.dart';
import '/features/auth/presentation/pages/send_code_screen.dart';
import '/features/auth/presentation/pages/auth_screen.dart';
import '/core/presentation/splash_screen.dart';
import '/core/presentation/root_screen.dart';

class EmptyRouterPage extends AutoRouter {
  const EmptyRouterPage({Key? key}) : super(key: key);
}

@CupertinoAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: RootScreen,
      children: [
        AutoRoute(path: 'auth', page: AuthPage, initial: true),
        AutoRoute(path: 'splash', page: SplashScreen),
        AutoRoute(path: 'getCode', page: GetCodePage),
        AutoRoute(path: 'sendCode', page: SendCodePage),
        AutoRoute(path: 'enterName', page: EnterNamePage),
        AutoRoute(path: 'map', page: MapPage),
        // CustomRoute(
        //   durationInMilliseconds: 0,
        //   reverseDurationInMilliseconds: 0,
        //   barrierDismissible: true,
        //   opaque: false,
        //   path: 'search',
        //   page: TransparentPage,
        //   fullscreenDialog: true,
        // ),
      ],
    ),
  ],
)
class $AppRouter {}
