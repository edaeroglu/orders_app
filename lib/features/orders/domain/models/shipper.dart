import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipper.freezed.dart';
part 'shipper.g.dart';

@freezed
class Shipper with _$Shipper {
  factory Shipper({
    String? phone,
    int? shipperid,
    String? shippername,
  }) = _Shipper;

  factory Shipper.fromJson(Map<String, dynamic> json) =>
      _$ShipperFromJson(json);
}
