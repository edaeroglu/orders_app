// import 'package:freezed_annotation/freezed_annotation.dart';
// import '../../domain/models/customer.dart';
// import '../../domain/models/employee.dart';
// import '../../domain/models/order_model.dart';
// import '../../domain/models/product_model/product_model.dart';
// import '../../domain/models/shipper.dart';

// part 'general_state.freezed.dart';

// @freezed
// class GeneralState with _$GeneralState {
//   factory GeneralState({
//     required List<OrderModel> orders,
//     required List<Customer> customers,
//     required List<Shipper> shippers,
//     required List<Employee> employees,
//     required List<ProductModel> products,
//     required OrderModel? selectedOrder,
//     required Customer? selectedCustomer,
//     required Shipper? selectedShipper,
//     required Employee? selectedEmployee,
//     required ProductModel? selectedProduct,
//   }) = _GeneralState;

//   factory GeneralState.initial() => GeneralState(
//         customers: [],
//         shippers: [],
//         employees: [],
//         products: [],
//         selectedCustomer: null,
//         selectedShipper: null,
//         selectedEmployee: null,
//         selectedProduct: null,
//         orders: [],
//         selectedOrder: null,
//       );
// }
