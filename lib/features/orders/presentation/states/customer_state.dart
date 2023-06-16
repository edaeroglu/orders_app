import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/models/customer.dart';
import '../../domain/models/employee.dart';
import '../../domain/models/product_model/product_model.dart';
import '../../domain/models/shipper.dart';

part 'customer_state.freezed.dart';

@freezed
class CustomerState with _$CustomerState {
  factory CustomerState({
    required List<Customer> customers,
    required List<Shipper> shippers,
    required List<Employee> employees,
    required List<ProductModel> products,
    required Customer? selectedCustomer,
    required Shipper? selectedShipper,
    required Employee? selectedEmployee,
  }) = _CustomerState;

  factory CustomerState.initial() => CustomerState(
      customers: [],
      shippers: [],
      employees: [],
      products: [],
      selectedCustomer: null,
      selectedShipper: null,
      selectedEmployee: null);
}
