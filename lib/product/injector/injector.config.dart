// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql_flutter/graphql_flutter.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../../core/graphql_client/graphql_client.dart' as _i4;
import '../../core/modules/modules.dart' as _i13;
import '../../features/orders/data/repositories/employee_repository_impl.dart'
    as _i12;
import '../../features/orders/data/repositories/order_repository_impl.dart'
    as _i6;
import '../../features/orders/data/repositories/product_repository_impl.dart'
    as _i8;
import '../../features/orders/data/repositories/shipper_repository_impl.dart'
    as _i10;
import '../../features/orders/domain/repositories/employee_repository.dart'
    as _i11;
import '../../features/orders/domain/repositories/order_repository.dart' as _i5;
import '../../features/orders/domain/repositories/product_repository.dart'
    as _i7;
import '../../features/orders/domain/repositories/shipper_repository.dart'
    as _i9;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.GraphQLClient>(() => registerModule.graphqlClient);
    gh.lazySingleton<_i4.GraphQLService>(
        () => _i4.GraphQLServiceImpl(gh<_i3.GraphQLClient>()));
    gh.factory<_i5.OrderRepository>(
        () => _i6.OrderRepositoryImpl(gh<_i4.GraphQLService>()));
    gh.factory<_i7.ProductRepository>(
        () => _i8.ProductRepositoryImpl(gh<_i4.GraphQLService>()));
    gh.factory<_i9.ShipperRepository>(
        () => _i10.ShipperRepositoryImpl(gh<_i4.GraphQLService>()));
    gh.factory<_i11.EmployeeRepository>(
        () => _i12.EmployeeRepositoryImpl(gh<_i4.GraphQLService>()));
    return this;
  }
}

class _$RegisterModule extends _i13.RegisterModule {}
