import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/models/customer.dart';
import '../../domain/models/employee.dart';
import '../../domain/models/order_model.dart';
import '../../domain/models/product/product.dart';
import '../../domain/models/shipper.dart';

part 'order_state.freezed.dart';

@freezed
class OrderState with _$OrderState {
  factory OrderState({
    required List<OrderModel> orders,
    required List<Customer> customers,
    required bool? insertOrderResponse,
    required OrderModel? selectedOrder,
    required List<Shipper> shippers,
    required List<Employee> employees,
    required List<Product> products,
    required Customer? selectedCustomer,
    required Shipper? selectedShipper,
    required Employee? selectedEmployee,
    required Product? selectedProduct,
  }) = _OrderState;
  factory OrderState.initial() => OrderState(
        orders: [],
        customers: [],
        insertOrderResponse: null,
        selectedOrder: null,
        employees: [],
        products: [],
        selectedCustomer: null,
        selectedEmployee: null,
        selectedProduct: null,
        selectedShipper: null,
        shippers: [],
      );
}
