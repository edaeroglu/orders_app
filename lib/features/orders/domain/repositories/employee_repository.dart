import '../models/employee.dart';

abstract class EmployeeRepository {
  Future<List<Employee>> getEmployees();

  Future<Employee> insertEmployee({
    required String firstName,
    required String lastName,
    required String notes,
  });

  Future<int> deleteEmployee({
    required int employeeId,
  });

  Future<Employee> updateEmployee({
    required int employeeId,
    required String firstName,
    required String lastName,
    required String notes,
  });
}
