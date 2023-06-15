import 'package:deneme/core/graphql_client/graphql_client.dart';
import 'package:deneme/product/graphql_queries/mutations.dart';
import 'package:injectable/injectable.dart';
import '../../../../product/graphql_queries/queries.dart';
import '../../domain/models/customer.dart';
import '../../domain/models/employee.dart';
import '../../domain/models/order_model.dart';
import '../../domain/models/product_model/product_model.dart';
import '../../domain/models/shipper.dart';
import '../../domain/repositories/order_mutate_repository.dart';

@Injectable(as: GeneralRepository)
class GeneralRepositoryImpl implements GeneralRepository {
  final GraphQLService graphQLService;

  GeneralRepositoryImpl(this.graphQLService);

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
  Future<List<ProductModel>> getProducts() async {
    var response = await graphQLService.query(Queries.getProducts);
    return response['products']
        .map<ProductModel>(
          (e) => ProductModel.fromJson(e),
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
}







// @Injectable(as: CustomerRepository)
// class CustomerRepositoryImpl implements CustomerRepository {
//   final GraphQLService graphQLService;

//   CustomerRepositoryImpl(this.graphQLService);

//   @override
//   Future<List<CustomerModel>> getCustomers() async {
//     var response = await graphQLService.query(Queries.getCustomers);
//     return response['customers']
//         .map<CustomerModel>((e) => CustomerModel.fromJson(e))
//         .toList();
//   }

//   @override
//   Future<OrderModel> insertCustomer({
//     required int customerId,
//     required int employeeId,
//     required int shipperId,
//   }) async {
//     var response =
//         await graphQLService.mutate(Mutations.insertOrder, variables: {
//       "customerid": customerId,
//       "employeeid": employeeId,
//       "shipperid": shipperId,
//     });
//     return OrderModel.fromJson(response['insert_orders_one']);
//   }

//   @override
//   Future<OrderModel> deleteCustomer({
//     required int customerId,
//     required int employeeId,
//     required int shipperId,
//   }) async {
//     var response =
//         await graphQLService.mutate(Mutations.deleteOrder, variables: {
//       "customerid": customerId,
//       "employeeid": employeeId,
//       "shipperid": shipperId,
//     });
//     return response['delete_orders']['affected_rows'];
//   }
// }

// @Injectable(as: EmployeeRepository)
// class EmployeeRepositoryImpl implements EmployeeRepository {
//   final GraphQLService graphQLService;

//   EmployeeRepositoryImpl(this.graphQLService);

//   @override
//   Future<List<EmployeeModel>> getEmployees() async {
//     var response = await graphQLService.query(Queries.getEmployees);
//     return response['employees']
//         .map<EmployeeModel>((e) => EmployeeModel.fromJson(e))
//         .toList();
//   }

//   @override
//   Future<int> insertEmployee({required int employeeId}) {
//     // TODO: implement insertEmployee
//     throw UnimplementedError();
//   }
// }

// @Injectable(as: ProductRepository)
// class ProductRepositoryImpl implements ProductRepository {
//   final GraphQLService graphQLService;

//   ProductRepositoryImpl(this.graphQLService);

//   @override
//   Future<List<ProductModel>> getProducts() async {
//     var response = await graphQLService.query(Queries.getProducts);
//     return response['products']
//         .map<ProductModel>((e) => ProductModel.fromJson(e))
//         .toList();
//   }

//   @override
//   Future<bool> insertProduct(
//       {required String productName, required String productId}) {
//     // TODO: implement insertProduct
//     throw UnimplementedError();
//   }
// }

// @Injectable(as: ShipperRepository)
// class ShipperRepositoryImpl implements ShipperRepository {
//   final GraphQLService graphQLService;

//   ShipperRepositoryImpl(this.graphQLService);

//   @override
//   Future<List<ShipperModel>> getShippers() async {
//     var response = await graphQLService.query(Queries.getShippers);
//     return response['shippers']
//         .map<ShipperModel>((e) => ShipperModel.fromJson(e))
//         .toList();
//   }

//   @override
//   Future<bool> insertShipper(
//       {required String shipperName, required String shipperId}) {
//     // TODO: implement insertShipper
//     throw UnimplementedError();
//   }
// }