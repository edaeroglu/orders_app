import 'package:deneme/core/graphql_client/graphql_client.dart';
import 'package:deneme/features/orders/domain/models/customer_model/customer_model.dart';
import 'package:deneme/features/orders/domain/models/shipper_model/shipper_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../product/graphql_queries/queries.dart';
import '../../domain/models/employee_model/employee_model.dart';
import '../../domain/models/product_model/product_model.dart';
import '../../domain/repositories/add_order_repository.dart';

@Injectable(as: CustomerRepository)
class CustomerRepositoryImpl implements CustomerRepository {
  final GraphQLService graphQLService;

  CustomerRepositoryImpl(this.graphQLService);

  @override
  Future<List<CustomerModel>> getCustomers() async {
    var response = await graphQLService.query(Queries.getCustomers);
    return response['customers']
        .map<CustomerModel>((e) => CustomerModel.fromJson(e))
        .toList();
  }

  @override
  Future<bool> insertCustomer(
      {required String customerId, required String customerName}) {
    // TODO: implement insertCustomer
    throw UnimplementedError();
  }
}

@Injectable(as: EmployeeRepository)
class EmployeeRepositoryImpl implements EmployeeRepository {
  final GraphQLService graphQLService;

  EmployeeRepositoryImpl(this.graphQLService);

  @override
  Future<List<EmployeeModel>> getEmployees() async {
    var response = await graphQLService.query(Queries.getEmployees);
    return response['employees']
        .map<EmployeeModel>((e) => EmployeeModel.fromJson(e))
        .toList();
  }

  @override
  Future<bool> insertEmployee(
      {required String firstName,
      required String lastName,
      required String employeeId}) {
    // TODO: implement insertEmployee
    throw UnimplementedError();
  }
}

@Injectable(as: ProductRepository)
class ProductRepositoryImpl implements ProductRepository {
  final GraphQLService graphQLService;

  ProductRepositoryImpl(this.graphQLService);

  @override
  Future<List<ProductModel>> getProducts() async {
    var response = await graphQLService.query(Queries.getProducts);
    return response['products']
        .map<ProductModel>((e) => ProductModel.fromJson(e))
        .toList();
  }

  @override
  Future<bool> insertProduct(
      {required String productName, required String productId}) {
    // TODO: implement insertProduct
    throw UnimplementedError();
  }
}

@Injectable(as: ShipperRepository)
class ShipperRepositoryImpl implements ShipperRepository {
  final GraphQLService graphQLService;

  ShipperRepositoryImpl(this.graphQLService);

  @override
  Future<List<ShipperModel>> getShippers() async {
    var response = await graphQLService.query(Queries.getShippers);
    return response['shippers']
        .map<ShipperModel>((e) => ShipperModel.fromJson(e))
        .toList();
  }

  @override
  Future<bool> insertShipper(
      {required String shipperName, required String shipperId}) {
    // TODO: implement insertShipper
    throw UnimplementedError();
  }
}
