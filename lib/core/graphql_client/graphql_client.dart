import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';

abstract class GraphQLService {
  GraphQLClient client;

  GraphQLService(this.client);

  Future query(String query, {Map<String, dynamic> variables});

  Future mutate(String mutation, {Map<String, dynamic> variables});

  Future subscribe(String subscription, {Map<String, dynamic> variables});
}

@LazySingleton(as: GraphQLService)
class GraphQLServiceImpl implements GraphQLService {
  @override
  GraphQLClient client;

  GraphQLServiceImpl(this.client);

  @override
  Future mutate(String mutation, {Map<String, dynamic>? variables}) async {
    var response = await client.mutate(MutationOptions(
      document: gql(mutation),
      variables: variables ?? {},
    ));

    if (response.hasException) {
      throw response.exception!;
    } else {
      return response.data;
    }
  }

  @override
  Future query(String query, {Map<String, dynamic>? variables}) async {
    var response = await client.query(QueryOptions(
      document: gql(query),
      variables: variables ?? {},
    ));
    if (response.hasException) {
      throw response.exception!;
    } else {
      return response.data;
    }
  }

  @override
  Future subscribe(String subscription, {Map<String, dynamic>? variables}) {
    // TODO: implement subscribe
    return Future.value("");
  }
}
