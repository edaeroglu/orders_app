import 'dart:async';
import 'dart:developer';
import 'package:deneme/features/orders/domain/repositories/order_repository.dart';
import 'package:deneme/features/orders/presentation/states/order_state.dart';
import 'package:deneme/product/injector/injector.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../domain/models/order_model.dart';

final bottomNavigationProvider = Provider<int>((ref) => 0);

final orderProvider =
    AsyncNotifierProvider.autoDispose<OrderNotifier, OrderState>(
        OrderNotifier.new);

class OrderNotifier extends AutoDisposeAsyncNotifier<OrderState> {
  late final OrderRepository service;

  @override
  FutureOr<OrderState> build() {
    service = getIt<OrderRepository>();
    return getOrders();
  }

  void addList(OrderModel order) {
    state = AsyncData(state.value!.copyWith(
        orders: [...state.value!.orders]
          ..insert(0, order))); // hangi indexe ekleneceği
  }

  void removeList(OrderModel order) {
    state = AsyncData(
        state.value!.copyWith(orders: [...state.value!.orders]..remove(order)));
  }

  Future<OrderState> getOrders() async {
    // state = AsyncData(OrderState.initial()); //Bu şekilde yazınca state'i ezip veri geldiğini düşünerek loading göstermiyor.
    // return AsyncData(state.value!.copyWith(orders: await service.getOrders())).value;

    return AsyncData(
            OrderState.initial().copyWith(orders: await service.getOrders()))
        .value;
  }

  void selectOrder(OrderModel selectedOrder) {
    state = AsyncData(state.value!.copyWith(selectedOrder: selectedOrder));
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

  // Future<OrderState> deleteOrder({
  //   required int orderId,
  // }) async {
  //   return state.value!.copyWith(
  //       deleteOrderResponse: await service.deleteOrder(
  //     orderId: orderId,
  //   ));
  // }

  Future<void> deleteOrder() async {
    OrderModel response = await service.deleteOrder(
      orderId: state.value!.selectedOrder!.orderid!,
    );

    log(response.toString());

    if (response.orderid != null) {
      ref.read(orderProvider.notifier).removeList(response);
    }
  }
}
