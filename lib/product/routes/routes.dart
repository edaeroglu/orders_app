import 'package:auto_route/auto_route.dart';
import 'package:deneme/features/orders/presentation/pages/shippers/add_shipper_view.dart';
import 'package:flutter/material.dart';
import '../../features/orders/presentation/pages/employees/add_employee_view.dart';
import '../../features/orders/presentation/pages/employees/delete_employee_view.dart';
import '../../features/orders/presentation/pages/employees/update_employee_view.dart';
import '../../features/orders/presentation/pages/orders/delete_order_view.dart';
import '../../features/orders/presentation/pages/employees/employee_view.dart';
import '../../features/orders/presentation/pages/home_view.dart';
import '../../features/orders/presentation/pages/products/add_product_view.dart';
import '../../features/orders/presentation/pages/products/delete_product_view.dart';
import '../../features/orders/presentation/pages/products/product_view.dart';
import '../../features/orders/presentation/pages/products/update_product_view.dart';
import '../../features/orders/presentation/pages/shippers/delete_shipper_view.dart';
import '../../features/orders/presentation/pages/shippers/shipper_view.dart';
import '../../features/orders/presentation/pages/orders/update_order_view.dart';
import '../../features/orders/presentation/pages/shippers/update_shipper_view.dart';
import '../components/bottom_nav_bar.dart';
import '../../features/orders/presentation/pages/orders/order_view.dart';
import '../../features/orders/presentation/pages/orders/add_order_view.dart';

part 'routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        // AutoRoute(
        //   page: OrderWrapperRoute.page,
        //   // initial: true,
        //   children: [
        //     AutoRoute(
        //       page: OrderRoute.page,
        //       // initial: true,
        //     ),
        //     AutoRoute(page: DeleteOrderRoute.page),
        //   ],
        // ),

        AutoRoute(page: HomeRoute.page, initial: true),

        AutoRoute(page: OrderRoute.page),
        AutoRoute(page: AddOrderRoute.page),
        AutoRoute(page: DeleteOrderRoute.page),
        AutoRoute(page: UpdateOrderRoute.page),

        AutoRoute(page: EmployeeRoute.page),
        AutoRoute(page: AddEmployeeRoute.page),
        AutoRoute(page: DeleteEmployeeRoute.page),
        AutoRoute(page: UpdateEmployeeRoute.page),

        AutoRoute(page: ShipperRoute.page),
        AutoRoute(page: AddShipperRoute.page),
        AutoRoute(page: DeleteShipperRoute.page),
        AutoRoute(page: UpdateShipperRoute.page),

        AutoRoute(page: ProductRoute.page),
        AutoRoute(page: AddProductRoute.page),
        AutoRoute(page: DeleteProductRoute.page),
        AutoRoute(page: UpdateProductRoute.page),
      ];
}
