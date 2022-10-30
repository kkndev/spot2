import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '/features/characters/presentation/pages/person_detail_screen.dart';
import '/features/characters/presentation/pages/person_screen.dart';
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
        AutoRoute(path: 'personDetail', page: PersonDetailPage),
        AutoRoute(path: 'persons', page: HomePage),
        AutoRoute(path: 'splash', page: SplashScreen, initial: true),
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
