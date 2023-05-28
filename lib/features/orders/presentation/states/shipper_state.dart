import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/shipper_model/shipper_model.dart';

part 'shipper_state.freezed.dart';

@freezed
class ShipperState with _$ShipperState {
  factory ShipperState(
      {required List<ShipperModel> shippers,
      required ShipperModel? selectedShipper}) = _ShipperState;

  factory ShipperState.initial() =>
      ShipperState(shippers: [], selectedShipper: null);
}
