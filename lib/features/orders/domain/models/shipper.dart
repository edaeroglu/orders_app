import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipper.freezed.dart';
part 'shipper.g.dart';

@Freezed(toStringOverride: false)
class Shipper with _$Shipper {
  Shipper._();
  factory Shipper({
    String? phone,
    int? shipperid,
    String? shippername,
  }) = _Shipper;

  factory Shipper.fromJson(Map<String, dynamic> json) =>
      _$ShipperFromJson(json);

  String toString() {
    return shippername.toString();
  }

  int get id => shipperid ?? 0;
}
