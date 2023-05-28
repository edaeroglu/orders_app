// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      orderid: json['orderid'] as int?,
      orderdate: json['orderdate'] as String?,
      shipperid: json['shipperid'] as int?,
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      employee: json['employee'] == null
          ? null
          : Employee.fromJson(json['employee'] as Map<String, dynamic>),
      employeeid: json['employeeid'] as int?,
      customerid: json['customerid'] as int?,
      shipper: json['shipper'] == null
          ? null
          : Shipper.fromJson(json['shipper'] as Map<String, dynamic>),
      orderDetails: (json['order_details'] as List<dynamic>?)
          ?.map((e) => OrderDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'orderid': instance.orderid,
      'orderdate': instance.orderdate,
      'shipperid': instance.shipperid,
      'customer': instance.customer,
      'employee': instance.employee,
      'employeeid': instance.employeeid,
      'customerid': instance.customerid,
      'shipper': instance.shipper,
      'order_details': instance.orderDetails,
    };
