import 'package:deneme/features/orders/domain/models/shipper.dart';
import 'package:deneme/features/orders/domain/models/employee.dart';
import 'package:deneme/features/orders/domain/models/customer.dart';
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
  Future<List<Customer>> getCustomers() async {
    var response = await graphQLService.query(Queries.getCustomers);
    return response['customers']
        .map<Customer>(
          (e) => Customer.fromJson(e),
        )
        .toList();
  }

  @override
  Future<List<Employee>> getEmployees() async {
    var response = await graphQLService.query(Queries.getEmployees);
    return response['employees']
        .map<Employee>(
          (e) => Employee.fromJson(e),
        )
        .toList();
  }

  @override
  Future<List<Shipper>> getShippers() async {
    var response = await graphQLService.query(Queries.getShippers);
    return response['shippers']
        .map<Shipper>(
          (e) => Shipper.fromJson(e),
        )
        .toList();
  }

  @override
  Future<OrderModel> insertOrder({
    required int customerId,
    required int employeeId,
    required int shipperId,
    // required int productId,
  }) async {
    var response = await graphQLService.mutate(
      Mutations.insertOrder,
      variables: {
        "customerid": customerId,
        "employeeid": employeeId,
        "shipperid": shipperId,
        // "productid": productId,
      },
    );
    return OrderModel.fromJson(response['insert_orders_one']);
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

  @override
  Future<OrderModel> updateOrder({
    required int orderId,
    required int customerId,
    required int employeeId,
    required int shipperId,
  }) async {
    var response = await graphQLService.mutate(
      Mutations.updateOrder,
      variables: {
        "orderid": orderId,
        "customerid": customerId,
        "employeeid": employeeId,
        "shipperid": shipperId,
      },
    );

    return OrderModel.fromJson(response['update_orders']['returning'][0]);
  }
}
