// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDetail _$$_OrderDetailFromJson(Map<String, dynamic> json) =>
    _$_OrderDetail(
      orderid: json['orderid'] as int?,
      productid: json['productid'] as int?,
      quantity: json['quantity'] as int?,
      orderdetailid: json['orderdetailid'] as int?,
    );

Map<String, dynamic> _$$_OrderDetailToJson(_$_OrderDetail instance) =>
    <String, dynamic>{
      'orderid': instance.orderid,
      'productid': instance.productid,
      'quantity': instance.quantity,
      'orderdetailid': instance.orderdetailid,
    };
