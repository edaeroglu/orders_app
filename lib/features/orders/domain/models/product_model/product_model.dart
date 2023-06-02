import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@Freezed(toStringOverride: false)
class ProductModel with _$ProductModel {
  ProductModel._();

  factory ProductModel({
    int? productid,
    String? productname,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  @override
  String toString() {
    return productname.toString();
  }

  int get id => productid ?? 0;
}
