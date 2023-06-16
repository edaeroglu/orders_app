import 'package:auto_route/auto_route.dart';
import '../../features/orders/presentation/pages/delete_view.dart';
import '../../features/orders/presentation/pages/update_view.dart';
import '../components/bottom_nav_bar.dart';
import '../../features/orders/presentation/pages/order_view.dart';
import '../../features/orders/presentation/pages/add_view.dart';

part 'routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OrderWrapperRoute.page, initial: true, children: [
          AutoRoute(
            page: OrderRoute.page,
            initial: true,
          ),
          AutoRoute(page: DeleteRoute.page),
        ]),
        AutoRoute(
          page: AddRoute.page,
        ),
        AutoRoute(page: UpdateRoute.page),
      ];
}
