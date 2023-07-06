import '../models/shipper.dart';

abstract class ShipperRepository {
  Future<List<Shipper>> getShippers();

  Future<Shipper> insertShipper({
    required String shipperName,
    required String phone,
  });

  Future<int> deleteShipper({
    required int shipperId,
  });

  Future<Shipper> updateShipper({
    required int shipperId,
    required String shipperName,
    required String phone,
  });
}
