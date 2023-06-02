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
  Future<int> deleteOrder({
    required int orderId,
  }) async {
    var response =
        await graphQLService.mutate(Mutations.deleteOrder, variables: {
      "order_id": orderId,
    });

    return response['delete_orders']['affected_rows'];
  }
}
