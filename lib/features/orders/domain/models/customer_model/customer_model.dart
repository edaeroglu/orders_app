import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

@Freezed(toStringOverride: false)
class CustomerModel with _$CustomerModel {
  CustomerModel._();

  factory CustomerModel({
    int? customerid,
    String? customername,
  }) = _CustomerModel;

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);

  //freezed toString method
  @override
  String toString() {
    return customername ?? "";
  }

  int get id => customerid ?? 0;
}
