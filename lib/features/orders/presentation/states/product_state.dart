import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/product_model/product_model.dart';

part 'product_state.freezed.dart';

@freezed
class ProductState with _$ProductState {
  factory ProductState(
      {required List<ProductModel> products,
      required ProductModel? selectedProduct}) = _ProductState;

  factory ProductState.initial() =>
      ProductState(products: [], selectedProduct: null);
}
