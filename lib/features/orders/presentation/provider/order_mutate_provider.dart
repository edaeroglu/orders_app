import 'dart:async';
import 'dart:developer';
import 'package:deneme/features/orders/domain/models/order_model.dart';
import 'package:deneme/features/orders/domain/models/product_model/product_model.dart';
import 'package:deneme/features/orders/domain/repositories/order_mutate_repository.dart';
import 'package:deneme/features/orders/presentation/provider/order_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../product/injector/injector.dart';
import '../../domain/models/customer.dart';
import '../../domain/models/employee.dart';
import '../../domain/models/shipper.dart';
import '../states/general_state.dart';

final bottomNavigationProvider = Provider<int>((ref) => 0);

final generalProvider =
    AsyncNotifierProvider.autoDispose<GeneralNotifier, GeneralState>(
        GeneralNotifier.new);

class GeneralNotifier extends AutoDisposeAsyncNotifier<GeneralState> {
  late final GeneralRepository service;
  // late final ShipperRepository shipperService;

  @override
  Future<GeneralState> build() async {
    await _init();
    return state.value!;
  }

  Future<void> _init() async {
    service = getIt<GeneralRepository>();
    // shipperService = getIt<ShipperRepository>();

    state = AsyncData(
      GeneralState.initial(),
    );

    Future.wait(
      [getCustomers(), getShippers(), getEmployees()],
    );

    log(state.value!.customers.toString());
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

  // Future<void> getProducts() async {
  //   var a = await service.getProducts();
  //   state = AsyncData(
  //     state.value!.copyWith(products: a),
  //   );
  // }

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


















// class CustomerNotifier extends AutoDisposeAsyncNotifier<CustomerState> {
//   late final CustomerRepository customerService;
//   late final ShipperRepository shipperService;
//   late final EmployeeRepository employeeService;

//   Future<void> _init() async {
//     customerService = getIt<CustomerRepository>();
//     shipperService = getIt<ShipperRepository>();
//     employeeService = getIt<EmployeeRepository>();

//     state = AsyncData(CustomerState.initial());

//     Future.wait([getCustomers(), getShippers(), getEmployees()]);

//     log(state.value!.customers.toString());
//   }

//   Future<void> getCustomers() async {
//     // state = AsyncData(CustomerState.initial());
//     var a = await customerService.getCustomers();
//     state = AsyncData(state.value!.copyWith(customers: a));
//   }

//   Future<void> getShippers() async {
//     var a = await shipperService.getShippers();
//     state = AsyncData(state.value!.copyWith(shippers: a));
//   }

//   Future<void> getEmployees() async {
//     var a = await employeeService.getEmployees();
//     state = AsyncData(state.value!.copyWith(employees: a));
//   }

//   @override
//   Future<CustomerState> build() async {
//     await _init();
//     return state.value!;
//   }

//   void selectCustomer(CustomerModel selectedCustomer) {
//     state =
//         AsyncData(state.value!.copyWith(selectedCustomer: selectedCustomer));
//   }

//   void selectShipper(ShipperModel selectedShipper) {
//     state = AsyncData(state.value!.copyWith(selectedShipper: selectedShipper));
//   }

//   void selectEmployee(EmployeeModel selectedEmployee) {
//     state =
//         AsyncData(state.value!.copyWith(selectedEmployee: selectedEmployee));
//   }

//   Future<void> insertCustomer() async {
//     OrderModel response = await customerService.insertCustomer(
//       customerId: state.value!.selectedCustomer!.customerid!,
//       employeeId: state.value!.selectedEmployee!.employeeid!,
//       shipperId: state.value!.selectedShipper!.shipperid!,
//     );

//     log(response.toString());

//     if (response.orderid != null) {
//       ref.read(orderProvider.notifier).addList(response);
//     }

//     // ref.read(orderProvider.notifier).state.value?.orders.add(response);
//     // await ref.read(orderProvider.notifier).getOrder();
//   }

//   Future<void> deleteCustomer() async {
//     OrderModel response = await customerService.deleteCustomer(
//       customerId: state.value!.selectedCustomer!.customerid!,
//       employeeId: state.value!.selectedEmployee!.employeeid!,
//       shipperId: state.value!.selectedShipper!.shipperid!,
//     );

//     log(response.toString());

//     if (response.orderid != null) {
//       ref.read(orderProvider.notifier).removeList(response);
//     }
//   }

  // Future<void> deleteCustomer() async {
  //   int response = await customerService.deleteCustomer(
  //     customerId: state.value!.selectedCustomer!.customerid!,
  //   );
  //   log(response.toString());

  //   await ref.read(orderProvider.notifier).getOrder();
  // }



// class EmployeeNotifier extends AutoDisposeAsyncNotifier<EmployeeState> {
//   late final EmployeeRepository service;

//   @override
//   Future<EmployeeState> build() {
//     service = getIt<EmployeeRepository>();
//     return getEmployees();
//   }

//   Future<EmployeeState> getEmployees() async {
//     state = AsyncData(EmployeeState.initial());
//     return state.value!.copyWith(employees: await service.getEmployees());
//   }

//   void selectEmployee(EmployeeModel selectedEmployee) {
//     state =
//         AsyncData(state.value!.copyWith(selectedEmployee: selectedEmployee));
//   }
// }

// class ProductNotifier extends AutoDisposeAsyncNotifier<ProductState> {
//   late final ProductRepository service;

//   @override
//   Future<ProductState> build() {
//     service = getIt<ProductRepository>();
//     return getProducts();
//   }

//   Future<ProductState> getProducts() async {
//     state = AsyncData(ProductState.initial());
//     return state.value!.copyWith(products: await service.getProducts());
//   }

//   void selectProduct(ProductModel selectedProduct) {
//     state = AsyncData(state.value!.copyWith(selectedProduct: selectedProduct));
//   }
// }

// final employeeProvider =
//     AsyncNotifierProvider.autoDispose<EmployeeNotifier, EmployeeState>(
//         EmployeeNotifier.new);

// final productProvider =
//     AsyncNotifierProvider.autoDispose<ProductNotifier, ProductState>(
//         ProductNotifier.new);

// final shipperProvider =
//     AsyncNotifierProvider.autoDispose<ShipperNotifier, ShipperState>(
//         ShipperNotifier.new);

// final customerProvider =
//     AsyncNotifierProvider.autoDispose<CustomerNotifier, CustomerState>(
//         CustomerNotifier.new);
