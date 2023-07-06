import 'package:deneme/features/orders/domain/repositories/employee_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/graphql_client/graphql_client.dart';
import '../../../../product/graphql_queries/mutations.dart';
import '../../../../product/graphql_queries/queries.dart';
import '../../domain/models/employee.dart';

@Injectable(as: EmployeeRepository)
class EmployeeRepositoryImpl implements EmployeeRepository {
  final GraphQLService graphQLService;

  EmployeeRepositoryImpl(this.graphQLService);

  @override
  Future<List<Employee>> getEmployees() async {
    var response = await graphQLService.query(Queries.getEmployees);
    return response['employees']
        .map<Employee>(
          (e) => Employee.fromJson(e),
        )
        .toList();
  }

  @override
  Future<Employee> insertEmployee({
    required String firstName,
    required String lastName,
    required String notes,
    // required DateTime birthDate,
  }) async {
    var response = await graphQLService.mutate(
      Mutations.insertEmployee,
      variables: {
        "firstname": firstName,
        "lastname": lastName,
        "notes": notes,
        // "birthdate": birthDate,
      },
    );
    return Employee.fromJson(response['insert_employees_one']);
  }

  @override
  Future<int> deleteEmployee({
    required int employeeId,
  }) async {
    var response = await graphQLService.mutate(
      Mutations.deleteEmployee,
      variables: {
        "employeeid": employeeId,
      },
    );
    return response['delete_employees']['affected_rows'];
  }

  @override
  Future<Employee> updateEmployee({
    required int employeeId,
    required String firstName,
    required String lastName,
    required String notes,
  }) async {
    var response = await graphQLService.mutate(
      Mutations.updateEmployee,
      variables: {
        "employeeid": employeeId,
        "firstname": firstName,
        "lastname": lastName,
        "notes": notes,
      },
    );
    return Employee.fromJson(response['update_employees']['returning'][0]);
  }
}
