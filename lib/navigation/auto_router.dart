import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../features/favorite_parking/presentation/pages/favorite_parkings_page.dart';
import '/features/user/presentation/pages/information_page.dart';
import '/features/user/presentation/pages/profile_page.dart';
import '/features/user/presentation/pages/promo_codes_page.dart';
import '/features/user/presentation/pages/subscription_page.dart';
import '/features/auth/presentation/pages/enter_name_screen.dart';
import '/features/map/presentation/pages/map_screen.dart';
import '/features/user/presentation/pages/menu_page.dart';
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
        AutoRoute(path: 'auth', page: AuthPage),
        AutoRoute(path: 'splash', page: SplashScreen),
        AutoRoute(path: 'getCode', page: GetCodePage),
        AutoRoute(path: 'sendCode', page: SendCodePage),
        AutoRoute(path: 'enterName', page: EnterNamePage),
        AutoRoute(path: 'map', page: MapPage),
        AutoRoute(path: 'menu', page: MenuPage),
        AutoRoute(path: 'profile', page: ProfilePage),
        AutoRoute(path: 'subscription', page: SubscriptionPage),
        AutoRoute(path: 'promoCodes', page: PromoCodesPage),
        AutoRoute(path: 'information', page: InformationPage),
        AutoRoute(
            path: 'favoriteParking', page: FavoriteParkingPage, initial: true),
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
