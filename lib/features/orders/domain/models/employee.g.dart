// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Employee _$$_EmployeeFromJson(Map<String, dynamic> json) => _$_Employee(
      notes: json['notes'] as String?,
      lastname: json['lastname'] as String?,
      firstname: json['firstname'] as String?,
      birthdate: json['birthdate'] as String?,
      employeeid: json['employeeid'] as int?,
    );

Map<String, dynamic> _$$_EmployeeToJson(_$_Employee instance) =>
    <String, dynamic>{
      'notes': instance.notes,
      'lastname': instance.lastname,
      'firstname': instance.firstname,
      'birthdate': instance.birthdate,
      'employeeid': instance.employeeid,
    };
