import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer.freezed.dart';
part 'customer.g.dart';

@Freezed(toStringOverride: false)
class Customer with _$Customer {
  Customer._();
  factory Customer({
    int? customerid,
    String? address,
    String? city,
    String? country,
    String? contactname,
    String? customername,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  @override
  String toString() {
    return customername.toString();
  }

  int get id => customerid ?? 0;
}
