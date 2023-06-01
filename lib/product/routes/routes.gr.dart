// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'routes.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CustomerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CustomerView(),
      );
    },
    OrderDetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrderDetailView(),
      );
    },
    OrderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrderView(),
      );
    },
    UpdateRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UpdateView(),
      );
    },
    OrderWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrderWrapperView(),
      );
    },
    DeleteRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DeleteView(),
      );
    },
  };
}

/// generated route for
/// [CustomerView]
class CustomerRoute extends PageRouteInfo<void> {
  const CustomerRoute({List<PageRouteInfo>? children})
      : super(
          CustomerRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomerRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrderDetailView]
class OrderDetailRoute extends PageRouteInfo<void> {
  const OrderDetailRoute({List<PageRouteInfo>? children})
      : super(
          OrderDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderDetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrderView]
class OrderRoute extends PageRouteInfo<void> {
  const OrderRoute({List<PageRouteInfo>? children})
      : super(
          OrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UpdateView]
class UpdateRoute extends PageRouteInfo<void> {
  const UpdateRoute({List<PageRouteInfo>? children})
      : super(
          UpdateRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrderWrapperView]
class OrderWrapperRoute extends PageRouteInfo<void> {
  const OrderWrapperRoute({List<PageRouteInfo>? children})
      : super(
          OrderWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DeleteView]
class DeleteRoute extends PageRouteInfo<void> {
  const DeleteRoute({List<PageRouteInfo>? children})
      : super(
          DeleteRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeleteRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
