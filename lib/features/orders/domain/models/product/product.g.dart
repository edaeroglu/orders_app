// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      productid: json['productid'] as int?,
      productname: json['productname'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'productid': instance.productid,
      'productname': instance.productname,
      'price': instance.price,
      'unit': instance.unit,
    };
