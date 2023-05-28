import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipper_model.freezed.dart';
part 'shipper_model.g.dart';

@freezed
class ShipperModel with _$ShipperModel {
  factory ShipperModel({
    int? shipperid,
    String? shippername,
  }) = _ShipperModel;

  factory ShipperModel.fromJson(Map<String, dynamic> json) =>
      _$ShipperModelFromJson(json);
}
