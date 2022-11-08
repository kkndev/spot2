// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

import '../core/presentation/root_screen.dart' as _i1;
import '../core/presentation/splash_screen.dart' as _i3;
import '../features/auth/presentation/pages/auth_screen.dart' as _i2;
import '../features/auth/presentation/pages/enter_name_screen.dart' as _i6;
import '../features/auth/presentation/pages/get_code_screen.dart' as _i4;
import '../features/auth/presentation/pages/send_code_screen.dart' as _i5;
import '../features/map/presentation/pages/map_screen.dart' as _i7;
import '../features/user/presentation/pages/information_page.dart' as _i12;
import '../features/user/presentation/pages/menu_page.dart' as _i8;
import '../features/user/presentation/pages/profile_page.dart' as _i9;
import '../features/user/presentation/pages/promo_codes_page.dart' as _i11;
import '../features/user/presentation/pages/subscription_page.dart' as _i10;

class AppRouter extends _i13.RootStackRouter {
  AppRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    RootScreenRoute.name: (routeData) {
      return _i13.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i13.WrappedRoute(child: const _i1.RootScreen()),
      );
    },
    AuthPageRoute.name: (routeData) {
      return _i13.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i2.AuthPage(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i13.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SplashScreen(),
      );
    },
    GetCodePageRoute.name: (routeData) {
      return _i13.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i4.GetCodePage(),
      );
    },
    SendCodePageRoute.name: (routeData) {
      return _i13.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i5.SendCodePage(),
      );
    },
    EnterNamePageRoute.name: (routeData) {
      return _i13.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i6.EnterNamePage(),
      );
    },
    MapPageRoute.name: (routeData) {
      return _i13.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i7.MapPage(),
      );
    },
    MenuPageRoute.name: (routeData) {
      return _i13.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i8.MenuPage(),
      );
    },
    ProfilePageRoute.name: (routeData) {
      return _i13.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i9.ProfilePage(),
      );
    },
    SubscriptionPageRoute.name: (routeData) {
      return _i13.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i10.SubscriptionPage(),
      );
    },
    PromoCodesPageRoute.name: (routeData) {
      return _i13.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i11.PromoCodesPage(),
      );
    },
    InformationPageRoute.name: (routeData) {
      return _i13.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i12.InformationPage(),
      );
    },
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(
          RootScreenRoute.name,
          path: '/',
          children: [
            _i13.RouteConfig(
              '#redirect',
              path: '',
              parent: RootScreenRoute.name,
              redirectTo: 'auth',
              fullMatch: true,
            ),
            _i13.RouteConfig(
              AuthPageRoute.name,
              path: 'auth',
              parent: RootScreenRoute.name,
            ),
            _i13.RouteConfig(
              SplashScreenRoute.name,
              path: 'splash',
              parent: RootScreenRoute.name,
            ),
            _i13.RouteConfig(
              GetCodePageRoute.name,
              path: 'getCode',
              parent: RootScreenRoute.name,
            ),
            _i13.RouteConfig(
              SendCodePageRoute.name,
              path: 'sendCode',
              parent: RootScreenRoute.name,
            ),
            _i13.RouteConfig(
              EnterNamePageRoute.name,
              path: 'enterName',
              parent: RootScreenRoute.name,
            ),
            _i13.RouteConfig(
              MapPageRoute.name,
              path: 'map',
              parent: RootScreenRoute.name,
            ),
            _i13.RouteConfig(
              MenuPageRoute.name,
              path: 'menu',
              parent: RootScreenRoute.name,
            ),
            _i13.RouteConfig(
              ProfilePageRoute.name,
              path: 'profile',
              parent: RootScreenRoute.name,
            ),
            _i13.RouteConfig(
              SubscriptionPageRoute.name,
              path: 'subscription',
              parent: RootScreenRoute.name,
            ),
            _i13.RouteConfig(
              PromoCodesPageRoute.name,
              path: 'promoCodes',
              parent: RootScreenRoute.name,
            ),
            _i13.RouteConfig(
              InformationPageRoute.name,
              path: 'information',
              parent: RootScreenRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.RootScreen]
class RootScreenRoute extends _i13.PageRouteInfo<void> {
  const RootScreenRoute({List<_i13.PageRouteInfo>? children})
      : super(
          RootScreenRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'RootScreenRoute';
}

/// generated route for
/// [_i2.AuthPage]
class AuthPageRoute extends _i13.PageRouteInfo<void> {
  const AuthPageRoute()
      : super(
          AuthPageRoute.name,
          path: 'auth',
        );

  static const String name = 'AuthPageRoute';
}

/// generated route for
/// [_i3.SplashScreen]
class SplashScreenRoute extends _i13.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: 'splash',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i4.GetCodePage]
class GetCodePageRoute extends _i13.PageRouteInfo<void> {
  const GetCodePageRoute()
      : super(
          GetCodePageRoute.name,
          path: 'getCode',
        );

  static const String name = 'GetCodePageRoute';
}

/// generated route for
/// [_i5.SendCodePage]
class SendCodePageRoute extends _i13.PageRouteInfo<void> {
  const SendCodePageRoute()
      : super(
          SendCodePageRoute.name,
          path: 'sendCode',
        );

  static const String name = 'SendCodePageRoute';
}

/// generated route for
/// [_i6.EnterNamePage]
class EnterNamePageRoute extends _i13.PageRouteInfo<void> {
  const EnterNamePageRoute()
      : super(
          EnterNamePageRoute.name,
          path: 'enterName',
        );

  static const String name = 'EnterNamePageRoute';
}

/// generated route for
/// [_i7.MapPage]
class MapPageRoute extends _i13.PageRouteInfo<void> {
  const MapPageRoute()
      : super(
          MapPageRoute.name,
          path: 'map',
        );

  static const String name = 'MapPageRoute';
}

/// generated route for
/// [_i8.MenuPage]
class MenuPageRoute extends _i13.PageRouteInfo<void> {
  const MenuPageRoute()
      : super(
          MenuPageRoute.name,
          path: 'menu',
        );

  static const String name = 'MenuPageRoute';
}

/// generated route for
/// [_i9.ProfilePage]
class ProfilePageRoute extends _i13.PageRouteInfo<void> {
  const ProfilePageRoute()
      : super(
          ProfilePageRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [_i10.SubscriptionPage]
class SubscriptionPageRoute extends _i13.PageRouteInfo<void> {
  const SubscriptionPageRoute()
      : super(
          SubscriptionPageRoute.name,
          path: 'subscription',
        );

  static const String name = 'SubscriptionPageRoute';
}

/// generated route for
/// [_i11.PromoCodesPage]
class PromoCodesPageRoute extends _i13.PageRouteInfo<void> {
  const PromoCodesPageRoute()
      : super(
          PromoCodesPageRoute.name,
          path: 'promoCodes',
        );

  static const String name = 'PromoCodesPageRoute';
}

/// generated route for
/// [_i12.InformationPage]
class InformationPageRoute extends _i13.PageRouteInfo<void> {
  const InformationPageRoute()
      : super(
          InformationPageRoute.name,
          path: 'information',
        );

  static const String name = 'InformationPageRoute';
}
