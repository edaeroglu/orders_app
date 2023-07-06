import 'package:deneme/core/graphql_client/graphql_client.dart';
import 'package:deneme/features/orders/domain/repositories/shipper_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../product/graphql_queries/mutations.dart';
import '../../../../product/graphql_queries/queries.dart';
import '../../domain/models/shipper.dart';

@Injectable(as: ShipperRepository)
class ShipperRepositoryImpl implements ShipperRepository {
  final GraphQLService graphQLService;

  ShipperRepositoryImpl(this.graphQLService);

  @override
  Future<List<Shipper>> getShippers() async {
    var response = await graphQLService.query(Queries.getShippers);
    return response['shippers']
        .map<Shipper>(
          (e) => Shipper.fromJson(e),
        )
        .toList();
  }

  @override
  Future<Shipper> insertShipper({
    // required int shipperId,
    required String shipperName,
    required String phone,
  }) async {
    var response = await graphQLService.mutate(
      Mutations.insertShipper,
      variables: {
        // "shipperid": shipperId,
        "shippername": shipperName,
        "phone": phone,
      },
    );
    return Shipper.fromJson(response['insert_shippers_one']);
  }

  @override
  Future<int> deleteShipper({
    required int shipperId,
  }) async {
    var response = await graphQLService.mutate(
      Mutations.deleteShipper,
      variables: {
        "shipperid": shipperId,
      },
    );
    return response['delete_shippers']['affected_rows'];
  }

  @override
  Future<Shipper> updateShipper({
    required int shipperId,
    required String shipperName,
    required String phone,
  }) async {
    var response = await graphQLService.mutate(
      Mutations.updateShipper,
      variables: {
        "shipperid": shipperId,
        "shippername": shipperName,
        "phone": phone,
      },
    );
    return Shipper.fromJson(response['update_shippers']['returning'][0]);
  }
}
