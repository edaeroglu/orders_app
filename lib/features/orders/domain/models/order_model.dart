import 'package:deneme/features/orders/domain/models/product_model/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'customer.dart';
import 'employee.dart';
import 'order_detail.dart';
import 'shipper.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@Freezed(toStringOverride: false)
class OrderModel with _$OrderModel {
  OrderModel._();

  factory OrderModel({
    int? orderid,
    String? orderdate,
    int? shipperid,
    Customer? customer,
    Employee? employee,
    int? employeeid,
    int? customerid,
    Shipper? shipper,
    @JsonKey(name: 'order_details') List<OrderDetail>? orderDetails,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
