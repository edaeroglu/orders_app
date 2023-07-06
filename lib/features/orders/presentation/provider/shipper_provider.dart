import 'dart:async';
import 'dart:developer';
import 'package:deneme/features/orders/domain/repositories/shipper_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../product/injector/injector.dart';
import '../../domain/models/shipper.dart';
import '../states/order_state.dart';

final shipperProvider =
    AsyncNotifierProvider.autoDispose<ShipperNotifier, OrderState>(
        ShipperNotifier.new);

class ShipperNotifier extends AutoDisposeAsyncNotifier<OrderState> {
  late final ShipperRepository service;

  @override
  FutureOr<OrderState> build() async {
    await _init();
    return state.value!;
  }

  Future<void> _init() async {
    service = getIt<ShipperRepository>();

    state = AsyncData(
      OrderState.initial(),
    );

    await getShippers();
  }

  Future<void> getShippers() async {
    var a = await service.getShippers();
    state = AsyncData(
      state.value!.copyWith(shippers: a.toSet().toList()),
    );
  }

  void addShipper(Shipper shipper) {
    state = AsyncData(
      state.value!.copyWith(
        shippers: [...state.value!.shippers]..insert(0, shipper),
      ),
    );
  }

  void removeShipper(int id) {
    state = AsyncData(
      state.value!.copyWith(
        shippers: [...state.value!.shippers]
          ..removeWhere((element) => element.shipperid == id),
      ),
    );
  }

  void updatedShipper(Shipper newShipper) {
    state = AsyncData(
      state.value!.copyWith(
        shippers: [...state.value!.shippers].map((shipper) {
          if (shipper.shipperid == newShipper.shipperid) {
            return shipper.copyWith(
              shippername: newShipper.shippername,
              phone: newShipper.phone,
            );
          } else {
            return shipper;
          }
        }).toList(),
      ),
    );
  }

  void selectShipper(Shipper selectedShipper) {
    state = AsyncData(
      state.value!.copyWith(selectedShipper: selectedShipper),
    );
  }

  Future<void> insertShipper(String shipperName, String phone) async {
    Shipper response = await service.insertShipper(
      shipperName: shipperName,
      phone: phone,
    );

    log(response.toString());

    if (response.shipperid != null) {
      ref.read(shipperProvider.notifier).addShipper(response);
    }

    state = AsyncData(
      state.value!.copyWith(
        selectedShipper: null,
      ),
    );
  }

  Future<void> deleteShipper() async {
    int response = await service.deleteShipper(
      shipperId: state.value!.selectedShipper!.shipperid!,
    );

    log(response.toString());

    if (response != 0) {
      ref
          .read(shipperProvider.notifier)
          .removeShipper(state.value!.selectedShipper!.shipperid!);
    }

    state = AsyncData(
      state.value!.copyWith(
        selectedShipper: null,
      ),
    );
  }

  Future<void> updateShipper(String shipperName, String phone,
      {required int id}) async {
    Shipper response = await service.updateShipper(
      shipperId: id,
      shipperName: shipperName,
      phone: phone,
    );

    log(response.toString());

    if (response.shipperid != null) {
      ref.read(shipperProvider.notifier).updatedShipper(Shipper(
            shipperid: id,
            shippername: shipperName,
            phone: phone,
          ));
    }

    state = AsyncData(state.value!.copyWith(selectedShipper: null));
  }
}
