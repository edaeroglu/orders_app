import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipper.freezed.dart';
part 'shipper.g.dart';

@Freezed(toStringOverride: false, equal: null)
class Shipper extends Equatable with _$Shipper {
  const Shipper._();
  const factory Shipper({
    String? phone,
    int? shipperid,
    String? shippername,
  }) = _Shipper;

  factory Shipper.fromJson(Map<String, dynamic> json) =>
      _$ShipperFromJson(json);

  @override
  String toString() {
    return shippername.toString();
  }

  int get id => shipperid ?? 0;

  @override
  // TODO: implement props
  List<Object?> get props => [
        phone,
      ];
}
