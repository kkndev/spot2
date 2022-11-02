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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../core/presentation/root_screen.dart' as _i1;
import '../core/presentation/splash_screen.dart' as _i3;
import '../features/auth/presentation/pages/auth_screen.dart' as _i2;
import '../features/auth/presentation/pages/enter_name_screen.dart' as _i6;
import '../features/auth/presentation/pages/get_code_screen.dart' as _i4;
import '../features/auth/presentation/pages/send_code_screen.dart' as _i5;
import '../features/map/presentation/pages/map_screen.dart' as _i7;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    RootScreenRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i8.WrappedRoute(child: const _i1.RootScreen()),
      );
    },
    AuthPageRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i2.AuthPage(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SplashScreen(),
      );
    },
    GetCodePageRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i4.GetCodePage(),
      );
    },
    SendCodePageRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i5.SendCodePage(),
      );
    },
    EnterNamePageRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i6.EnterNamePage(),
      );
    },
    MapPageRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i7.MapPage(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          RootScreenRoute.name,
          path: '/',
          children: [
            _i8.RouteConfig(
              '#redirect',
              path: '',
              parent: RootScreenRoute.name,
              redirectTo: 'auth',
              fullMatch: true,
            ),
            _i8.RouteConfig(
              AuthPageRoute.name,
              path: 'auth',
              parent: RootScreenRoute.name,
            ),
            _i8.RouteConfig(
              SplashScreenRoute.name,
              path: 'splash',
              parent: RootScreenRoute.name,
            ),
            _i8.RouteConfig(
              GetCodePageRoute.name,
              path: 'getCode',
              parent: RootScreenRoute.name,
            ),
            _i8.RouteConfig(
              SendCodePageRoute.name,
              path: 'sendCode',
              parent: RootScreenRoute.name,
            ),
            _i8.RouteConfig(
              EnterNamePageRoute.name,
              path: 'enterName',
              parent: RootScreenRoute.name,
            ),
            _i8.RouteConfig(
              MapPageRoute.name,
              path: 'map',
              parent: RootScreenRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.RootScreen]
class RootScreenRoute extends _i8.PageRouteInfo<void> {
  const RootScreenRoute({List<_i8.PageRouteInfo>? children})
      : super(
          RootScreenRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'RootScreenRoute';
}

/// generated route for
/// [_i2.AuthPage]
class AuthPageRoute extends _i8.PageRouteInfo<void> {
  const AuthPageRoute()
      : super(
          AuthPageRoute.name,
          path: 'auth',
        );

  static const String name = 'AuthPageRoute';
}

/// generated route for
/// [_i3.SplashScreen]
class SplashScreenRoute extends _i8.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: 'splash',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i4.GetCodePage]
class GetCodePageRoute extends _i8.PageRouteInfo<void> {
  const GetCodePageRoute()
      : super(
          GetCodePageRoute.name,
          path: 'getCode',
        );

  static const String name = 'GetCodePageRoute';
}

/// generated route for
/// [_i5.SendCodePage]
class SendCodePageRoute extends _i8.PageRouteInfo<void> {
  const SendCodePageRoute()
      : super(
          SendCodePageRoute.name,
          path: 'sendCode',
        );

  static const String name = 'SendCodePageRoute';
}

/// generated route for
/// [_i6.EnterNamePage]
class EnterNamePageRoute extends _i8.PageRouteInfo<void> {
  const EnterNamePageRoute()
      : super(
          EnterNamePageRoute.name,
          path: 'enterName',
        );

  static const String name = 'EnterNamePageRoute';
}

/// generated route for
/// [_i7.MapPage]
class MapPageRoute extends _i8.PageRouteInfo<void> {
  const MapPageRoute()
      : super(
          MapPageRoute.name,
          path: 'map',
        );

  static const String name = 'MapPageRoute';
}
