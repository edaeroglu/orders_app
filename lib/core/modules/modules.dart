import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  GraphQLClient get graphqlClient => GraphQLClient(
        link: HttpLink("https://coherent-ostrich-58.hasura.app/v1/graphql",
            defaultHeaders: {
              "x-hasura-admin-secret":
                  "qUEMpQ7VV9nnNwVMX8IYN7DREJbOtvSCvUvE9WqN8qBwESFTpXZbp1pqwGduXFZe"
            }),
        // The default store is the InMemoryStore, which does NOT persist to disk
        cache: GraphQLCache(store: HiveStore()),
      );
}
