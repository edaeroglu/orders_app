import 'package:deneme/features/orders/domain/models/employee_model/employee_model.dart';
import 'package:deneme/features/orders/domain/models/product_model/product_model.dart';
import 'package:deneme/features/orders/domain/models/shipper_model/shipper_model.dart';
import '../models/customer_model/customer_model.dart';
import '../models/order_model.dart';

abstract class GeneralRepository {
  Future<List<CustomerModel>> getCustomers();
  Future<List<EmployeeModel>> getEmployees();
  Future<List<ProductModel>> getProducts();
  Future<List<ShipperModel>> getShippers();

  Future<OrderModel> insertCustomer({
    required int customerId,
    required int employeeId,
    required int shipperId,
    // required int productId,
  });

  Future<OrderModel> deleteCustomer({
    required int orderId,
  });

  Future<bool> insertProduct(
      {required String productName, required String productId});

  Future<bool> insertShipper(
      {required String shipperName, required String shipperId});

  Future<int> insertEmployee({
    required int employeeId,
  });
}


// abstract class CustomerRepository {
//   Future<List<CustomerModel>> getCustomers();
//   Future<OrderModel> insertCustomer({
//     required int customerId,
//     required int employeeId,
//     required int shipperId,
//   });

//   Future<OrderModel> deleteCustomer({
//     required int customerId,
//     required int employeeId,
//     required int shipperId,
//   });
// }

// abstract class EmployeeRepository {
//   Future<List<EmployeeModel>> getEmployees();
//   Future<int> insertEmployee({
//     required int employeeId,
//   });
// }

// abstract class ProductRepository {
//   Future<List<ProductModel>> getProducts();
//   Future<bool> insertProduct(
//       {required String productName, required String productId});
// }

// abstract class ShipperRepository {
//   Future<List<ShipperModel>> getShippers();
//   Future<bool> insertShipper(
//       {required String shipperName, required String shipperId});
// }

