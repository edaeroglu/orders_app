import 'dart:async';
import 'dart:developer';
import 'package:deneme/features/orders/domain/repositories/order_repository.dart';
import 'package:deneme/features/orders/presentation/states/order_state.dart';
import 'package:deneme/product/injector/injector.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:injectable/injectable.dart';
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

  Future<OrderState> getOrders() async {
    // state = AsyncData(OrderState.initial()); //Bu şekilde yazınca state'i ezip veri geldiğini düşünerek loading göstermiyor.
    // return AsyncData(state.value!.copyWith(orders: await service.getOrders())).value;

    return AsyncData(
            OrderState.initial().copyWith(orders: await service.getOrders()))
        .value; // o yüzden bu şekilde yazıldı
  }

  void selectOrder(OrderModel selectedOrder) {
    state = AsyncData(state.value!.copyWith(selectedOrder: selectedOrder));
  }

  Future<void> deleteOrder() async {
    int response = await service.deleteOrder(
      orderId: state.value!.selectedOrder!.orderid!,
    );

    log(response.toString());

    if (response != 0) {
      ref
          .read(orderProvider.notifier)
          .removeList(state.value!.selectedOrder!.orderid!);

      state = AsyncData(
        state.value!.copyWith(
          selectedOrder: null,
          // orders: [...state.value!.orders]..removeWhere(
          //     (element) =>
          //         element.orderid == state.value!.selectedOrder!.orderid!,
          //   ),
        ),
      );
    }
  }

  void addList(OrderModel order) {
    state = AsyncData(
      state.value!.copyWith(
        orders: [...state.value!.orders]..insert(0, order),
      ),
    ); // hangi indexe ekleneceği
  }

  void removeList(int id) {
    state = AsyncData(
      state.value!.copyWith(
        orders: [...state.value!.orders]
          ..removeWhere((element) => element.orderid == id),
      ),
    ); // immutable olduğu için liste değişmedi. o yüzden bu şekilde kullanıldı.
  }

  void updateList(OrderModel newOrder) {
    state = AsyncData(state.value!.copyWith(
        orders: [...state.value!.orders]
          ..firstWhere((element) => element.orderid == newOrder.orderid)));
  }
}
