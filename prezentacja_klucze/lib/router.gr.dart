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

import 'pages/bloc_with_keys_page.dart' as _i10;
import 'pages/bloc_without_keys_page.dart' as _i12;
import 'pages/duplicate_value_keys_page.dart' as _i2;
import 'pages/form_page.dart' as _i11;
import 'pages/menu_page.dart' as _i1;
import 'pages/object_vs_uniqe_key_page.dart' as _i3;
import 'pages/swap_parent_with_keys_page.dart' as _i6;
import 'pages/swap_parent_with_local_keys_page.dart' as _i8;
import 'pages/swap_parent_with_local_keys_the_same_level_page.dart' as _i9;
import 'pages/swap_parent_without_keys_page.dart' as _i7;
import 'pages/swap_with_keys_page.dart' as _i4;
import 'pages/swap_without_keys_page.dart' as _i5;

class AppRouter extends _i13.RootStackRouter {
  AppRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    MenuRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i13.WrappedRoute(child: const _i1.MenuPage()));
    },
    DuplicateValueKeysRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.DuplicateValueKeysPage());
    },
    ObjectVsUniqueKeyRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ObjectVsUniqueKeyPage());
    },
    SwapWithKeysRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SwapWithKeysPage());
    },
    SwapWithoutKeysRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SwapWithoutKeysPage());
    },
    SwapParentWithKeysRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SwapParentWithKeysPage());
    },
    SwapParentWithoutKeysRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.SwapParentWithoutKeysPage());
    },
    SwapParentWithLocalKeysRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.SwapParentWithLocalKeysPage());
    },
    SwapParentWithLocalKeysTheSameLevelRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i9.SwapParentWithLocalKeysTheSameLevelPage());
    },
    BlocWithKeysRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.BlocWithKeysPage());
    },
    FormRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.FormPage());
    },
    BlocWithoutKeysRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.BlocWithoutKeysPage());
    }
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(MenuRoute.name, path: '/'),
        _i13.RouteConfig(DuplicateValueKeysRoute.name,
            path: '/duplicate-value-keys-page'),
        _i13.RouteConfig(ObjectVsUniqueKeyRoute.name,
            path: '/object-vs-unique-key-page'),
        _i13.RouteConfig(SwapWithKeysRoute.name, path: '/swap-with-keys-page'),
        _i13.RouteConfig(SwapWithoutKeysRoute.name,
            path: '/swap-without-keys-page'),
        _i13.RouteConfig(SwapParentWithKeysRoute.name,
            path: '/swap-parent-with-keys-page'),
        _i13.RouteConfig(SwapParentWithoutKeysRoute.name,
            path: '/swap-parent-without-keys-page'),
        _i13.RouteConfig(SwapParentWithLocalKeysRoute.name,
            path: '/swap-parent-with-local-keys-page'),
        _i13.RouteConfig(SwapParentWithLocalKeysTheSameLevelRoute.name,
            path: '/swap-parent-with-local-keys-the-same-level-page'),
        _i13.RouteConfig(BlocWithKeysRoute.name, path: '/bloc-with-keys-page'),
        _i13.RouteConfig(FormRoute.name, path: '/form-page'),
        _i13.RouteConfig(BlocWithoutKeysRoute.name,
            path: '/bloc-without-keys-page')
      ];
}

/// generated route for
/// [_i1.MenuPage]
class MenuRoute extends _i13.PageRouteInfo<void> {
  const MenuRoute() : super(MenuRoute.name, path: '/');

  static const String name = 'MenuRoute';
}

/// generated route for
/// [_i2.DuplicateValueKeysPage]
class DuplicateValueKeysRoute extends _i13.PageRouteInfo<void> {
  const DuplicateValueKeysRoute()
      : super(DuplicateValueKeysRoute.name, path: '/duplicate-value-keys-page');

  static const String name = 'DuplicateValueKeysRoute';
}

/// generated route for
/// [_i3.ObjectVsUniqueKeyPage]
class ObjectVsUniqueKeyRoute extends _i13.PageRouteInfo<void> {
  const ObjectVsUniqueKeyRoute()
      : super(ObjectVsUniqueKeyRoute.name, path: '/object-vs-unique-key-page');

  static const String name = 'ObjectVsUniqueKeyRoute';
}

/// generated route for
/// [_i4.SwapWithKeysPage]
class SwapWithKeysRoute extends _i13.PageRouteInfo<void> {
  const SwapWithKeysRoute()
      : super(SwapWithKeysRoute.name, path: '/swap-with-keys-page');

  static const String name = 'SwapWithKeysRoute';
}

/// generated route for
/// [_i5.SwapWithoutKeysPage]
class SwapWithoutKeysRoute extends _i13.PageRouteInfo<void> {
  const SwapWithoutKeysRoute()
      : super(SwapWithoutKeysRoute.name, path: '/swap-without-keys-page');

  static const String name = 'SwapWithoutKeysRoute';
}

/// generated route for
/// [_i6.SwapParentWithKeysPage]
class SwapParentWithKeysRoute extends _i13.PageRouteInfo<void> {
  const SwapParentWithKeysRoute()
      : super(SwapParentWithKeysRoute.name,
            path: '/swap-parent-with-keys-page');

  static const String name = 'SwapParentWithKeysRoute';
}

/// generated route for
/// [_i7.SwapParentWithoutKeysPage]
class SwapParentWithoutKeysRoute extends _i13.PageRouteInfo<void> {
  const SwapParentWithoutKeysRoute()
      : super(SwapParentWithoutKeysRoute.name,
            path: '/swap-parent-without-keys-page');

  static const String name = 'SwapParentWithoutKeysRoute';
}

/// generated route for
/// [_i8.SwapParentWithLocalKeysPage]
class SwapParentWithLocalKeysRoute extends _i13.PageRouteInfo<void> {
  const SwapParentWithLocalKeysRoute()
      : super(SwapParentWithLocalKeysRoute.name,
            path: '/swap-parent-with-local-keys-page');

  static const String name = 'SwapParentWithLocalKeysRoute';
}

/// generated route for
/// [_i9.SwapParentWithLocalKeysTheSameLevelPage]
class SwapParentWithLocalKeysTheSameLevelRoute
    extends _i13.PageRouteInfo<void> {
  const SwapParentWithLocalKeysTheSameLevelRoute()
      : super(SwapParentWithLocalKeysTheSameLevelRoute.name,
            path: '/swap-parent-with-local-keys-the-same-level-page');

  static const String name = 'SwapParentWithLocalKeysTheSameLevelRoute';
}

/// generated route for
/// [_i10.BlocWithKeysPage]
class BlocWithKeysRoute extends _i13.PageRouteInfo<void> {
  const BlocWithKeysRoute()
      : super(BlocWithKeysRoute.name, path: '/bloc-with-keys-page');

  static const String name = 'BlocWithKeysRoute';
}

/// generated route for
/// [_i11.FormPage]
class FormRoute extends _i13.PageRouteInfo<void> {
  const FormRoute() : super(FormRoute.name, path: '/form-page');

  static const String name = 'FormRoute';
}

/// generated route for
/// [_i12.BlocWithoutKeysPage]
class BlocWithoutKeysRoute extends _i13.PageRouteInfo<void> {
  const BlocWithoutKeysRoute()
      : super(BlocWithoutKeysRoute.name, path: '/bloc-without-keys-page');

  static const String name = 'BlocWithoutKeysRoute';
}
