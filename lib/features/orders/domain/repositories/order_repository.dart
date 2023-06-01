import '../models/order_model.dart';

abstract class OrderRepository {
  Future<List<OrderModel>> getOrders();
  Future<bool> insertOrder({
    required int customerId,
    required int employeeId,
    required int shipperId,
    required int productId,
    required int quantity,
  });

  Future<OrderModel> deleteOrder({
    required int orderId,
  });
}
