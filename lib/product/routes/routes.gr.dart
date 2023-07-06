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
    AddEmployeeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddEmployeeView(),
      );
    },
    DeleteEmployeeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DeleteEmployeeView(),
      );
    },
    EmployeeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EmployeeView(),
      );
    },
    UpdateEmployeeRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateEmployeeRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: UpdateEmployeeView(
          args.employeeId,
          args.selectEmployee,
          key: args.key,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    AddOrderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddOrderView(),
      );
    },
    DeleteOrderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DeleteOrderView(),
      );
    },
    OrderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrderView(),
      );
    },
    UpdateOrderRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateOrderRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: UpdateOrderView(
          args.orderId,
          key: args.key,
        ),
      );
    },
    AddProductRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddProductView(),
      );
    },
    DeleteProductRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DeleteProductView(),
      );
    },
    ProductRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProductView(),
      );
    },
    UpdateProductRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateProductRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: UpdateProductView(
          args.productId,
          args.selectProduct,
          key: args.key,
        ),
      );
    },
    AddShipperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddShipperView(),
      );
    },
    DeleteShipperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DeleteShipperView(),
      );
    },
    ShipperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShipperView(),
      );
    },
    UpdateShipperRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateShipperRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: UpdateShipperView(
          args.shipperId,
          args.selectShipper,
          key: args.key,
        ),
      );
    },
    OrderWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrderWrapperView(),
      );
    },
  };
}

/// generated route for
/// [AddEmployeeView]
class AddEmployeeRoute extends PageRouteInfo<void> {
  const AddEmployeeRoute({List<PageRouteInfo>? children})
      : super(
          AddEmployeeRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddEmployeeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DeleteEmployeeView]
class DeleteEmployeeRoute extends PageRouteInfo<void> {
  const DeleteEmployeeRoute({List<PageRouteInfo>? children})
      : super(
          DeleteEmployeeRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeleteEmployeeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EmployeeView]
class EmployeeRoute extends PageRouteInfo<void> {
  const EmployeeRoute({List<PageRouteInfo>? children})
      : super(
          EmployeeRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmployeeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UpdateEmployeeView]
class UpdateEmployeeRoute extends PageRouteInfo<UpdateEmployeeRouteArgs> {
  UpdateEmployeeRoute({
    required int employeeId,
    required dynamic selectEmployee,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          UpdateEmployeeRoute.name,
          args: UpdateEmployeeRouteArgs(
            employeeId: employeeId,
            selectEmployee: selectEmployee,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'UpdateEmployeeRoute';

  static const PageInfo<UpdateEmployeeRouteArgs> page =
      PageInfo<UpdateEmployeeRouteArgs>(name);
}

class UpdateEmployeeRouteArgs {
  const UpdateEmployeeRouteArgs({
    required this.employeeId,
    required this.selectEmployee,
    this.key,
  });

  final int employeeId;

  final dynamic selectEmployee;

  final Key? key;

  @override
  String toString() {
    return 'UpdateEmployeeRouteArgs{employeeId: $employeeId, selectEmployee: $selectEmployee, key: $key}';
  }
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AddOrderView]
class AddOrderRoute extends PageRouteInfo<void> {
  const AddOrderRoute({List<PageRouteInfo>? children})
      : super(
          AddOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddOrderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DeleteOrderView]
class DeleteOrderRoute extends PageRouteInfo<void> {
  const DeleteOrderRoute({List<PageRouteInfo>? children})
      : super(
          DeleteOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeleteOrderRoute';

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
/// [UpdateOrderView]
class UpdateOrderRoute extends PageRouteInfo<UpdateOrderRouteArgs> {
  UpdateOrderRoute({
    required int orderId,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          UpdateOrderRoute.name,
          args: UpdateOrderRouteArgs(
            orderId: orderId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'UpdateOrderRoute';

  static const PageInfo<UpdateOrderRouteArgs> page =
      PageInfo<UpdateOrderRouteArgs>(name);
}

class UpdateOrderRouteArgs {
  const UpdateOrderRouteArgs({
    required this.orderId,
    this.key,
  });

  final int orderId;

  final Key? key;

  @override
  String toString() {
    return 'UpdateOrderRouteArgs{orderId: $orderId, key: $key}';
  }
}

/// generated route for
/// [AddProductView]
class AddProductRoute extends PageRouteInfo<void> {
  const AddProductRoute({List<PageRouteInfo>? children})
      : super(
          AddProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddProductRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DeleteProductView]
class DeleteProductRoute extends PageRouteInfo<void> {
  const DeleteProductRoute({List<PageRouteInfo>? children})
      : super(
          DeleteProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeleteProductRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductView]
class ProductRoute extends PageRouteInfo<void> {
  const ProductRoute({List<PageRouteInfo>? children})
      : super(
          ProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UpdateProductView]
class UpdateProductRoute extends PageRouteInfo<UpdateProductRouteArgs> {
  UpdateProductRoute({
    required int productId,
    required dynamic selectProduct,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          UpdateProductRoute.name,
          args: UpdateProductRouteArgs(
            productId: productId,
            selectProduct: selectProduct,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'UpdateProductRoute';

  static const PageInfo<UpdateProductRouteArgs> page =
      PageInfo<UpdateProductRouteArgs>(name);
}

class UpdateProductRouteArgs {
  const UpdateProductRouteArgs({
    required this.productId,
    required this.selectProduct,
    this.key,
  });

  final int productId;

  final dynamic selectProduct;

  final Key? key;

  @override
  String toString() {
    return 'UpdateProductRouteArgs{productId: $productId, selectProduct: $selectProduct, key: $key}';
  }
}

/// generated route for
/// [AddShipperView]
class AddShipperRoute extends PageRouteInfo<void> {
  const AddShipperRoute({List<PageRouteInfo>? children})
      : super(
          AddShipperRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddShipperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DeleteShipperView]
class DeleteShipperRoute extends PageRouteInfo<void> {
  const DeleteShipperRoute({List<PageRouteInfo>? children})
      : super(
          DeleteShipperRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeleteShipperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ShipperView]
class ShipperRoute extends PageRouteInfo<void> {
  const ShipperRoute({List<PageRouteInfo>? children})
      : super(
          ShipperRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShipperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UpdateShipperView]
class UpdateShipperRoute extends PageRouteInfo<UpdateShipperRouteArgs> {
  UpdateShipperRoute({
    required int shipperId,
    required dynamic selectShipper,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          UpdateShipperRoute.name,
          args: UpdateShipperRouteArgs(
            shipperId: shipperId,
            selectShipper: selectShipper,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'UpdateShipperRoute';

  static const PageInfo<UpdateShipperRouteArgs> page =
      PageInfo<UpdateShipperRouteArgs>(name);
}

class UpdateShipperRouteArgs {
  const UpdateShipperRouteArgs({
    required this.shipperId,
    required this.selectShipper,
    this.key,
  });

  final int shipperId;

  final dynamic selectShipper;

  final Key? key;

  @override
  String toString() {
    return 'UpdateShipperRouteArgs{shipperId: $shipperId, selectShipper: $selectShipper, key: $key}';
  }
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
