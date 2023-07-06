import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@Freezed(toStringOverride: false)
class Product with _$Product {
  Product._();
  factory Product({
    int? productid,
    String? productname,
    double? price,
    String? unit,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  String toString() {
    return productname.toString();
  }

  int get id => productid ?? 0;
}
