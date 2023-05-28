import 'dart:async';
import 'package:deneme/features/orders/domain/models/customer_model/customer_model.dart';
import 'package:deneme/features/orders/domain/models/employee_model/employee_model.dart';
import 'package:deneme/features/orders/domain/models/shipper_model/shipper_model.dart';
import 'package:deneme/features/orders/presentation/states/product_state.dart';
import 'package:deneme/features/orders/presentation/states/shipper_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../product/injector/injector.dart';
import '../../domain/models/product_model/product_model.dart';
import '../../domain/repositories/add_order_repository.dart';
import '../states/customer_state.dart';
import '../states/employee_state.dart';

class CustomerNotifier extends AutoDisposeAsyncNotifier<CustomerState> {
  late final CustomerRepository service;

  @override
  Future<CustomerState> build() async {
    service = getIt<CustomerRepository>();
    return await getCustomers();
  }

  Future<CustomerState> getCustomers() async {
    state = AsyncData(CustomerState.initial());
    return state.value!.copyWith(customers: await service.getCustomers());
  }

  void selectCustomer(CustomerModel selectedCustomer) {
    state =
        AsyncData(state.value!.copyWith(selectedCustomer: selectedCustomer));
  }
}

class EmployeeNotifier extends AutoDisposeAsyncNotifier<EmployeeState> {
  late final EmployeeRepository service;

  @override
  Future<EmployeeState> build() {
    service = getIt<EmployeeRepository>();
    return getEmployees();
  }

  Future<EmployeeState> getEmployees() async {
    state = AsyncData(EmployeeState.initial());
    return state.value!.copyWith(employees: await service.getEmployees());
  }

  void selectEmployee(EmployeeModel selectedEmployee) {
    state =
        AsyncData(state.value!.copyWith(selectedEmployee: selectedEmployee));
  }
}

class ProductNotifier extends AutoDisposeAsyncNotifier<ProductState> {
  late final ProductRepository service;

  @override
  Future<ProductState> build() {
    service = getIt<ProductRepository>();
    return getProducts();
  }

  Future<ProductState> getProducts() async {
    state = AsyncData(ProductState.initial());
    return state.value!.copyWith(products: await service.getProducts());
  }

  void selectProduct(ProductModel selectedProduct) {
    state = AsyncData(state.value!.copyWith(selectedProduct: selectedProduct));
  }
}

class ShipperNotifier extends AutoDisposeAsyncNotifier<ShipperState> {
  late final ShipperRepository service;

  Future<ShipperState> build() {
    service = getIt<ShipperRepository>();
    return getShippers();
  }

  Future<ShipperState> getShippers() async {
    state = AsyncData(ShipperState.initial());
    return state.value!.copyWith(shippers: await service.getShippers());
  }

  void selectShipper(ShipperModel selectedShipper) {
    state = AsyncData(state.value!.copyWith(selectedShipper: selectedShipper));
  }
}

  final customerProvider =
      AsyncNotifierProvider.autoDispose<CustomerNotifier, CustomerState>(
          CustomerNotifier.new);

  final employeeProvider =
      AsyncNotifierProvider.autoDispose<EmployeeNotifier, EmployeeState>(
          EmployeeNotifier.new);

  final productProvider =
      AsyncNotifierProvider.autoDispose<ProductNotifier, ProductState>(
          ProductNotifier.new);

  final shipperProvider =
      AsyncNotifierProvider.autoDispose<ShipperNotifier, ShipperState>(
          ShipperNotifier.new);


