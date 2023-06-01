import 'package:injectable/injectable.dart';
import '../../../../core/graphql_client/graphql_client.dart';
import '../../../../product/graphql_queries/mutations.dart';
import '../../../../product/graphql_queries/queries.dart';
import '../../domain/models/order_model.dart';
import '../../domain/repositories/order_repository.dart';

@Injectable(as: OrderRepository)
class OrderRepositoryImpl implements OrderRepository {
  final GraphQLService graphQLService;

  OrderRepositoryImpl(this.graphQLService);

  @override
  Future<List<OrderModel>> getOrders() async {
    var response = await graphQLService.query(Queries.getOrders);
    return response['orders']
        .map<OrderModel>((e) => OrderModel.fromJson(e))
        .toList();
  }

  @override
  Future<bool> insertOrder({
    required int customerId,
    required int employeeId,
    required int shipperId,
    required int productId,
    required int quantity,
  }) async {
    var response =
        await graphQLService.mutate(Mutations.insertOrder, variables: {
      "customerId": customerId,
      "employeeId": employeeId,
      "shipperId": shipperId,
      "productId": productId,
      "quantity": quantity
    });

    return response['insert_orders_one']['id'] != null;
  }

  @override
  Future<OrderModel> deleteOrder({
    required int orderId,
  }) async {
    var response =
        await graphQLService.mutate(Mutations.deleteOrder, variables: {
      "orderid": orderId,
    });

    return OrderModel.fromJson(response['delete_orders']);
  }
}
