import 'dart:async';
import 'dart:developer';
import 'package:deneme/features/orders/domain/repositories/order_repository.dart';
import 'package:deneme/features/orders/presentation/states/order_state.dart';
import 'package:deneme/product/injector/injector.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../domain/models/customer.dart';
import '../../domain/models/employee.dart';
import '../../domain/models/order_model.dart';
import '../../domain/models/product_model/product_model.dart';
import '../../domain/models/shipper.dart';

final bottomNavigationProvider = Provider<int>((ref) => 0);

final orderProvider =
    AsyncNotifierProvider.autoDispose<OrderNotifier, OrderState>(
        OrderNotifier.new);

class OrderNotifier extends AutoDisposeAsyncNotifier<OrderState> {
  late final OrderRepository service;

  @override
  FutureOr<OrderState> build() async {
    // service = getIt<OrderRepository>();
    // return getOrders();

    await _init();
    return state.value!;
  }

  Future<void> _init() async {
    service = getIt<OrderRepository>();
    // shipperService = getIt<ShipperRepository>();

    state = AsyncData(
      OrderState.initial(),
    );

    Future.wait(
      [getOrders(), getCustomers(), getShippers(), getEmployees()],
    );

    log(state.value!.orders.toString());
  }

  Future<void> getOrders() async {
    // state = AsyncData(OrderState.initial()); //Bu şekilde yazınca state'i ezip veri geldiğini düşünerek loading göstermiyor.
    // return AsyncData(state.value!.copyWith(orders: await service.getOrders())).value;

    // return AsyncData(
    //   OrderState.initial().copyWith(
    //     orders: await service.getOrders(),
    //   ),
    // ).value; // o yüzden bu şekilde yazıldı

    var a = await service.getOrders();
    state = AsyncData(
      state.value!.copyWith(orders: a),
    );
  }

  Future<void> getCustomers() async {
    // state = AsyncData(CustomerState.initial());
    var a = await service.getCustomers();
    state = AsyncData(
      state.value!.copyWith(customers: a),
    );
  }

  Future<void> getShippers() async {
    var a = await service.getShippers();
    state = AsyncData(
      state.value!.copyWith(shippers: a),
    );
  }

  Future<void> getEmployees() async {
    var a = await service.getEmployees();
    state = AsyncData(
      state.value!.copyWith(employees: a),
    );
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
    state = AsyncData(
      state.value!.copyWith(
        orders: [...state.value!.orders].map((order) {
          if (order.orderid == newOrder.orderid) {
            return order.copyWith(
              customer: newOrder.customer,
              employee: newOrder.employee,
              shipper: newOrder.shipper,
              // shipperid: newOrder.shipperid,
              // customerid: newOrder.customerid,
              // employeeid: newOrder.employeeid,
            );
          } else {
            return order;
          }
        }).toList(),
      ),
    );
  }

  void selectOrder(OrderModel selectedOrder) {
    state = AsyncData(
      state.value!.copyWith(selectedOrder: selectedOrder),
    );
  }

  void selectCustomer(Customer selectedCustomer) {
    state = AsyncData(
      state.value!.copyWith(selectedCustomer: selectedCustomer),
    );
  }

  void selectShipper(Shipper selectedShipper) {
    state = AsyncData(
      state.value!.copyWith(selectedShipper: selectedShipper),
    );
  }

  void selectEmployee(Employee selectedEmployee) {
    state = AsyncData(
      state.value!.copyWith(selectedEmployee: selectedEmployee),
    );
  }

  void selectProduct(ProductModel selectedProduct) {
    state = AsyncData(
      state.value!.copyWith(selectedProduct: selectedProduct),
    );
  }

  Future<void> insertOrder() async {
    OrderModel response = await service.insertOrder(
      customerId: state.value!.selectedCustomer!.customerid!,
      employeeId: state.value!.selectedEmployee!.employeeid!,
      shipperId: state.value!.selectedShipper!.shipperid!,
    );

    log(response.toString());

    if (response.orderid != null) {
      ref.read(orderProvider.notifier).addList(response);
    }

    state = AsyncData(
      state.value!.copyWith(
          selectedCustomer: null,
          selectedEmployee: null,
          selectedShipper: null),
    );

    // await ref.read(orderProvider.notifier).getOrder();
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
        ),
      );
    }
  }

  Future<void> updateOrder({required int id}) async {
    OrderModel response = await service.updateOrder(
      orderId: id,
      customerId: state.value!.selectedCustomer!.customerid!,
      employeeId: state.value!.selectedEmployee!.employeeid!,
      shipperId: state.value!.selectedShipper!.shipperid!,
    );

    log(response.toString());

    if (response.orderid != null) {
      ref.read(orderProvider.notifier).updateList(OrderModel(
            orderid: id,
            customer: state.value!.selectedCustomer!,
            employee: state.value!.selectedEmployee!,
            shipper: state.value!.selectedShipper!,
            // employeeid: state.value!.selectedEmployee!.employeeid!,
            // shipperid: state.value!.selectedShipper!.shipperid!,
            // customerid: state.value!.selectedCustomer!.customerid!,
          ));
    }

    state = AsyncData(
      state.value!.copyWith(
          selectedCustomer: null,
          selectedEmployee: null,
          selectedShipper: null),
    );
  }
}
