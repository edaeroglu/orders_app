import 'dart:async';
import 'dart:developer';
import 'package:deneme/features/orders/domain/models/product/product.dart';
import 'package:deneme/features/orders/domain/repositories/product_repository.dart';
import 'package:deneme/features/orders/presentation/states/order_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../product/injector/injector.dart';

final productProvider =
    AsyncNotifierProvider.autoDispose<ProductNotifier, OrderState>(
        ProductNotifier.new);

class ProductNotifier extends AutoDisposeAsyncNotifier<OrderState> {
  late final ProductRepository service;

  @override
  FutureOr<OrderState> build() async {
    await _init();
    return state.value!;
  }

  Future<void> _init() async {
    service = getIt<ProductRepository>();

    state = AsyncData(
      OrderState.initial(),
    );

    await getProducts();
  }

  Future<void> getProducts() async {
    var a = await service.getProducts();
    state = AsyncData(state.value!.copyWith(products: a));
  }

  void addProduct(Product product) {
    state = AsyncData(
      state.value!.copyWith(
        products: [...state.value!.products]..insert(0, product),
      ),
    );
  }

  void removeProduct(int id) {
    state = AsyncData(
      state.value!.copyWith(
        products: [...state.value!.products]
          ..removeWhere((element) => element.productid == id),
      ),
    );
  }

  void updatedProduct(Product newProduct) {
    state = AsyncData(
      state.value!.copyWith(
        products: [...state.value!.products].map((product) {
          if (product.productid == newProduct.productid) {
            return product.copyWith(
                productname: newProduct.productname,
                price: newProduct.price,
                unit: newProduct.unit);
          } else {
            return product;
          }
        }).toList(),
      ),
    );
  }

  void selectProduct(Product selectedProduct) {
    state = AsyncData(
      state.value!.copyWith(selectedProduct: selectedProduct),
    );
  }

  Future<void> insertProduct(
      String productName, String unit, double price) async {
    Product response = await service.insertProduct(
        productName: productName, unit: unit, price: price);

    log(response.toString());

    if (response.productid != null) {
      ref.read(productProvider.notifier).addProduct(response);
    }

    state = AsyncData(
      state.value!.copyWith(selectedProduct: null),
    );
  }

  Future<void> deleteProduct() async {
    int response = await service.deleteProduct(
        productId: state.value!.selectedProduct!.productid!);

    log(response.toString());

    if (response != 0) {
      ref
          .read(productProvider.notifier)
          .removeProduct(state.value!.selectedProduct!.productid!);
    }

    state = AsyncData(state.value!.copyWith(selectedProduct: null));
  }

  Future<void> updateProduct(String productName, String unit, double price,
      {required int id}) async {
    Product response = await service.updateProduct(
        productId: id, productName: productName, unit: unit, price: price);

    log(response.toString());

    if (response.productid != null) {
      ref.read(productProvider.notifier).updatedProduct(Product(
            productid: id,
            productname: productName,
            unit: unit,
            price: price,
          ));
    }

    state = AsyncData(state.value!.copyWith(selectedProduct: null));
  }
}
