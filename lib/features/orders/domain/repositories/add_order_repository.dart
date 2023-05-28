import 'package:deneme/features/orders/domain/models/employee_model/employee_model.dart';
import 'package:deneme/features/orders/domain/models/product_model/product_model.dart';
import 'package:deneme/features/orders/domain/models/shipper_model/shipper_model.dart';
import '../models/customer_model/customer_model.dart';

abstract class CustomerRepository {
  Future<List<CustomerModel>> getCustomers();
  Future<bool> insertCustomer({
    required String customerId,
    required String customerName,
  });
}

abstract class EmployeeRepository {
  Future<List<EmployeeModel>> getEmployees();
  Future<bool> insertEmployee({
    required String firstName,
    required String lastName,
    required String employeeId,
  });
}

abstract class ProductRepository {
  Future<List<ProductModel>> getProducts();
  Future<bool> insertProduct(
      {required String productName, required String productId});
}

abstract class ShipperRepository {
  Future<List<ShipperModel>> getShippers();
  Future<bool> insertShipper(
      {required String shipperName, required String shipperId});
}
