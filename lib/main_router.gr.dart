// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import 'page/details_page.dart' as _i2;
import 'page/main_page.dart' as _i1;

class MainRouter extends _i3.RootStackRouter {
  MainRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    MainPageRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainPage());
    },
    DetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<DetailsPageRouteArgs>();
      return _i3.MaterialPageX<String>(
          routeData: routeData,
          child: _i2.DetailsPage(initialName: args.initialName, key: args.key));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(MainPageRoute.name, path: '/'),
        _i3.RouteConfig(DetailsPageRoute.name, path: '/details-page')
      ];
}

/// generated route for [_i1.MainPage]
class MainPageRoute extends _i3.PageRouteInfo<void> {
  const MainPageRoute() : super(name, path: '/');

  static const String name = 'MainPageRoute';
}

/// generated route for [_i2.DetailsPage]
class DetailsPageRoute extends _i3.PageRouteInfo<DetailsPageRouteArgs> {
  DetailsPageRoute({required String initialName, _i4.Key? key})
      : super(name,
            path: '/details-page',
            args: DetailsPageRouteArgs(initialName: initialName, key: key));

  static const String name = 'DetailsPageRoute';
}

class DetailsPageRouteArgs {
  const DetailsPageRouteArgs({required this.initialName, this.key});

  final String initialName;

  final _i4.Key? key;

  @override
  String toString() {
    return 'DetailsPageRouteArgs{initialName: $initialName, key: $key}';
  }
}
