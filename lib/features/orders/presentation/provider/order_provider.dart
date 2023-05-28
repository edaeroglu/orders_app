import 'dart:async';
import 'package:deneme/features/orders/domain/repositories/order_repository.dart';
import 'package:deneme/features/orders/presentation/states/order_state.dart';
import 'package:deneme/product/injector/injector.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderNotifier extends AutoDisposeAsyncNotifier<OrderState> {
  late final OrderRepository service;

  @override
  FutureOr<OrderState> build() {
    service = getIt<OrderRepository>();
    return getOrders();
  }

  Future<OrderState> getOrders() async {
    state = AsyncData(OrderState.initial());
    return state.value!.copyWith(orders: await service.getOrders());
  }

  Future<OrderState> insertOrder(
      {required int customerId,
      required int employeeId,
      required int shipperId,
      required int productId,
      required int quantity}) async {
    return state.value!.copyWith(
        insertOrderResponse: await service.insertOrder(
            customerId: customerId,
            employeeId: employeeId,
            shipperId: shipperId,
            productId: productId,
            quantity: quantity));
  }
}

final orderProvider =
    AsyncNotifierProvider.autoDispose<OrderNotifier, OrderState>(
        OrderNotifier.new);

final bottomNavigationProvider = Provider<int>((ref) => 0);
