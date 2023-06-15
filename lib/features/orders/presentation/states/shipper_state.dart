import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/models/shipper.dart';

part 'shipper_state.freezed.dart';

@freezed
class ShipperState with _$ShipperState {
  factory ShipperState(
      {required List<Shipper> shippers,
      required Shipper? selectedShipper}) = _ShipperState;

  factory ShipperState.initial() =>
      ShipperState(shippers: [], selectedShipper: null);
}
