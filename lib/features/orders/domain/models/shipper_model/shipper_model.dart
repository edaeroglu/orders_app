import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipper_model.freezed.dart';
part 'shipper_model.g.dart';

@Freezed(toStringOverride: false)
class ShipperModel with _$ShipperModel {
  ShipperModel._();

  factory ShipperModel({
    int? shipperid,
    String? shippername,
  }) = _ShipperModel;

  factory ShipperModel.fromJson(Map<String, dynamic> json) =>
      _$ShipperModelFromJson(json);

  //freezed toString method
  @override
  String toString() {
    return shippername.toString();
  }

  int get id => shipperid ?? 0;
}
