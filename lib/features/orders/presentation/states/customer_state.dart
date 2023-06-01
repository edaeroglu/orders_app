import 'package:deneme/features/orders/domain/models/employee_model/employee_model.dart';
import 'package:deneme/features/orders/domain/models/shipper_model/shipper_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/models/customer_model/customer_model.dart';
import '../../domain/models/product_model/product_model.dart';

part 'customer_state.freezed.dart';

@freezed
class CustomerState with _$CustomerState {
  factory CustomerState({
    required List<CustomerModel> customers,
    required List<ShipperModel> shippers,
    required List<EmployeeModel> employees,
    required List<ProductModel> products,
    required CustomerModel? selectedCustomer,
    required ShipperModel? selectedShipper,
    required EmployeeModel? selectedEmployee,
  }) = _CustomerState;

  factory CustomerState.initial() => CustomerState(
      customers: [],
      selectedCustomer: null,
      shippers: [],
      employees: [],
      products: [],
      selectedShipper: null,
      selectedEmployee: null);
}