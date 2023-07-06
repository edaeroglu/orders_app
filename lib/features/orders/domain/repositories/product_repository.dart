import 'package:deneme/features/orders/domain/models/product/product.dart';

abstract class ProductRepository {
  Future<List<Product>> getProducts();

  Future<Product> insertProduct({
    required String productName,
    required String unit,
    required double price,
  });

  Future<int> deleteProduct({
    required int productId,
  });

  Future<Product> updateProduct({
    required int productId,
    required String productName,
    required String unit,
    required double price,
  });
}
