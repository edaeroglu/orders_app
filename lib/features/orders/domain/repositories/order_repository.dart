import '../models/customer.dart';
import '../models/employee.dart';
import '../models/order_model.dart';
import '../models/shipper.dart';

abstract class OrderRepository {
  Future<List<OrderModel>> getOrders();
  Future<List<Shipper>> getShippers();
  Future<List<Customer>> getCustomers();
  Future<List<Employee>> getEmployees();

  Future<OrderModel> insertOrder({
    required int customerId,
    required int employeeId,
    required int shipperId,
    // required int productId,
  });

  Future<int> deleteOrder({
    required int orderId,
  });

  Future<OrderModel> updateOrder({
    required int orderId,
    required int customerId,
    required int employeeId,
    required int shipperId,
  });
}
