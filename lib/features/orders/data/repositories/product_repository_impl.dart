import 'package:deneme/core/graphql_client/graphql_client.dart';
import 'package:deneme/features/orders/domain/repositories/product_repository.dart';
import 'package:deneme/product/graphql_queries/mutations.dart';
import 'package:injectable/injectable.dart';

import '../../../../product/graphql_queries/queries.dart';
import '../../domain/models/product/product.dart';

@Injectable(as: ProductRepository)
class ProductRepositoryImpl implements ProductRepository {
  final GraphQLService graphQLService;

  ProductRepositoryImpl(this.graphQLService);

  @override
  Future<List<Product>> getProducts() async {
    var response = await graphQLService.query(Queries.getProducts);
    return response['products']
        .map<Product>(
          (e) => Product.fromJson(e),
        )
        .toList();
  }

  @override
  Future<Product> insertProduct({
    required String productName,
    required double price,
    required String unit,
  }) async {
    var response =
        await graphQLService.mutate(Mutations.insertProduct, variables: {
      "productname": productName,
      "price": price,
      "unit": unit,
    });
    return Product.fromJson(response['insert_products_one']);
  }

  @override
  Future<int> deleteProduct({
    required int productId,
  }) async {
    var response =
        await graphQLService.mutate(Mutations.deleteProduct, variables: {
      "productid": productId,
    });
    return response['delete_products']['affected_rows'];
  }

  @override
  Future<Product> updateProduct({
    required int productId,
    required String productName,
    required double price,
    required String unit,
  }) async {
    var response =
        await graphQLService.mutate(Mutations.updateProduct, variables: {
      "productid": productId,
      "productname": productName,
      "price": price,
      "unit": unit,
    });
    return Product.fromJson(response['update_products']['returning'][0]);
  }
}
