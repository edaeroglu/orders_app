// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Customer _$$_CustomerFromJson(Map<String, dynamic> json) => _$_Customer(
      customerid: json['customerid'] as int?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      contactname: json['contactname'] as String?,
      customername: json['customername'] as String?,
    );

Map<String, dynamic> _$$_CustomerToJson(_$_Customer instance) =>
    <String, dynamic>{
      'customerid': instance.customerid,
      'address': instance.address,
      'city': instance.city,
      'country': instance.country,
      'contactname': instance.contactname,
      'customername': instance.customername,
    };
