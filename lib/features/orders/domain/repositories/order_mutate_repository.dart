import 'package:deneme/features/orders/domain/models/product_model/product_model.dart';
import '../models/customer.dart';
import '../models/employee.dart';
import '../models/order_model.dart';
import '../models/shipper.dart';

abstract class GeneralRepository {
  Future<List<Customer>> getCustomers();
  Future<List<Employee>> getEmployees();
  Future<List<ProductModel>> getProducts();
  Future<List<Shipper>> getShippers();

  Future<OrderModel> insertOrder({
    required int customerId,
    required int employeeId,
    required int shipperId,
    // required int productId,
  });

  Future<OrderModel> updateOrder({
    required int orderId,
    required int customerId,
    required int employeeId,
    required int shipperId,
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

