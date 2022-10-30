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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../core/presentation/root_screen.dart' as _i1;
import '../core/presentation/splash_screen.dart' as _i4;
import '../features/characters/domain/entities/person_entity.dart' as _i7;
import '../features/characters/presentation/pages/person_detail_screen.dart'
    as _i2;
import '../features/characters/presentation/pages/person_screen.dart' as _i3;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    RootScreenRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i5.WrappedRoute(child: const _i1.RootScreen()),
      );
    },
    PersonDetailPageRoute.name: (routeData) {
      final args = routeData.argsAs<PersonDetailPageRouteArgs>();
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i2.PersonDetailPage(
          key: args.key,
          person: args.person,
        ),
      );
    },
    HomePageRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SplashScreen(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          RootScreenRoute.name,
          path: '/',
          children: [
            _i5.RouteConfig(
              '#redirect',
              path: '',
              parent: RootScreenRoute.name,
              redirectTo: 'splash',
              fullMatch: true,
            ),
            _i5.RouteConfig(
              PersonDetailPageRoute.name,
              path: 'personDetail',
              parent: RootScreenRoute.name,
            ),
            _i5.RouteConfig(
              HomePageRoute.name,
              path: 'persons',
              parent: RootScreenRoute.name,
            ),
            _i5.RouteConfig(
              SplashScreenRoute.name,
              path: 'splash',
              parent: RootScreenRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.RootScreen]
class RootScreenRoute extends _i5.PageRouteInfo<void> {
  const RootScreenRoute({List<_i5.PageRouteInfo>? children})
      : super(
          RootScreenRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'RootScreenRoute';
}

/// generated route for
/// [_i2.PersonDetailPage]
class PersonDetailPageRoute
    extends _i5.PageRouteInfo<PersonDetailPageRouteArgs> {
  PersonDetailPageRoute({
    _i6.Key? key,
    required _i7.PersonEntity person,
  }) : super(
          PersonDetailPageRoute.name,
          path: 'personDetail',
          args: PersonDetailPageRouteArgs(
            key: key,
            person: person,
          ),
        );

  static const String name = 'PersonDetailPageRoute';
}

class PersonDetailPageRouteArgs {
  const PersonDetailPageRouteArgs({
    this.key,
    required this.person,
  });

  final _i6.Key? key;

  final _i7.PersonEntity person;

  @override
  String toString() {
    return 'PersonDetailPageRouteArgs{key: $key, person: $person}';
  }
}

/// generated route for
/// [_i3.HomePage]
class HomePageRoute extends _i5.PageRouteInfo<void> {
  const HomePageRoute()
      : super(
          HomePageRoute.name,
          path: 'persons',
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i4.SplashScreen]
class SplashScreenRoute extends _i5.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: 'splash',
        );

  static const String name = 'SplashScreenRoute';
}
