import 'package:deneme/features/orders/presentation/states/employee_state.dart';
import 'package:deneme/features/orders/presentation/states/product_state.dart';
import 'package:deneme/features/orders/presentation/states/shipper_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'customer_state.dart';
import 'order_state.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    required OrderState orderState,
    required ProductState productState,
    required CustomerState customerState,
    required EmployeeState employeeState,
    required ShipperState shipperState,

    // Diğer state özellikleri buraya eklenebilir
  }) = _AppState;

  factory AppState.initial() => AppState(
        orderState: OrderState.initial(),
        productState: ProductState.initial(),

        customerState: CustomerState.initial(),
        employeeState: EmployeeState.initial(),
        shipperState: ShipperState.initial(),

        // Diğer başlangıç state özellikleri buraya eklenebilir
      );
}
