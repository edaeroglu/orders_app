import 'package:deneme/features/orders/domain/models/employee_model/employee_model.dart';
import 'package:deneme/features/orders/domain/models/shipper_model/shipper_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/models/customer_model/customer_model.dart';
import '../../domain/models/order_model.dart';
import '../../domain/models/product_model/product_model.dart';

part 'general_state.freezed.dart';

@freezed
class GeneralState with _$GeneralState {
  factory GeneralState({
    required List<CustomerModel> customers,
    required List<ShipperModel> shippers,
    required List<EmployeeModel> employees,
    required List<ProductModel> products,
    required CustomerModel? selectedCustomer,
    required ShipperModel? selectedShipper,
    required EmployeeModel? selectedEmployee,
    required OrderModel? selectedOrder,
    required ProductModel? selectProduct,
  }) = _GeneralState;

  factory GeneralState.initial() => GeneralState(
      customers: [],
      shippers: [],
      employees: [],
      products: [],
      selectedCustomer: null,
      selectedShipper: null,
      selectedEmployee: null,
      selectedOrder: null,
      selectProduct: null);
}
