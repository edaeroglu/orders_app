import 'dart:async';
import 'dart:developer';
import 'package:deneme/features/orders/presentation/states/order_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../product/injector/injector.dart';
import '../../domain/models/employee.dart';
import '../../domain/repositories/employee_repository.dart';

final employeeProvider =
    AsyncNotifierProvider.autoDispose<EmployeeNotifier, OrderState>(
        EmployeeNotifier.new);

class EmployeeNotifier extends AutoDisposeAsyncNotifier<OrderState> {
  late final EmployeeRepository service;

  @override
  FutureOr<OrderState> build() async {
    await _init();
    return state.value!;
  }

  Future<void> _init() async {
    service = getIt<EmployeeRepository>();

    state = AsyncData(
      OrderState.initial(),
    );

    await getEmployees();
  }

  Future<void> getEmployees() async {
    var a = await service.getEmployees();
    state = AsyncData(
      state.value!.copyWith(employees: a),
    );
  }

  void selectEmployee(Employee selectedEmployee) {
    state = AsyncData(
      state.value!.copyWith(selectedEmployee: selectedEmployee),
    );
  }

  void addEmployee(Employee employee) {
    state = AsyncData(
      state.value!.copyWith(
        employees: [...state.value!.employees]..insert(0, employee),
      ),
    );
  }

  void removeEmployee(int id) {
    state = AsyncData(
      state.value!.copyWith(
        employees: [...state.value!.employees]
          ..removeWhere((element) => element.employeeid == id),
      ),
    );
  }

  void updatedEmployee(Employee newEmployee) {
    state = AsyncData(
      state.value!.copyWith(
        employees: [...state.value!.employees].map((employee) {
          if (employee.employeeid == newEmployee.employeeid) {
            return employee.copyWith(
              firstname: newEmployee.firstname,
              lastname: newEmployee.lastname,
              notes: newEmployee.notes,
            );
          } else {
            return employee;
          }
        }).toList(),
      ),
    );
  }

  Future<void> insertEmployee(
      String firstName, String lastName, String notes) async {
    Employee response = await service.insertEmployee(
      firstName: firstName,
      lastName: lastName,
      notes: notes,
    );

    log(response.toString());

    if (response.employeeid != null) {
      addEmployee(response);
    }

    state = AsyncData(
      state.value!.copyWith(
        selectedEmployee: null,
      ),
    );
  }

  Future<void> deleteEmployee() async {
    int response = await service.deleteEmployee(
      employeeId: state.value!.selectedEmployee!.employeeid!,
    );

    log(response.toString());

    if (response != 0) {
      ref.read(employeeProvider.notifier).removeEmployee(
            state.value!.selectedEmployee!.employeeid!,
          );
    }

    state = AsyncData(
      state.value!.copyWith(
        selectedEmployee: null,
      ),
    );
  }

  Future<void> updateEmployee(String firstName, String lastName, String notes,
      {required int id}) async {
    Employee response = await service.updateEmployee(
      employeeId: id,
      firstName: firstName,
      lastName: lastName,
      notes: notes,
    );

    log(response.toString());

    if (response.employeeid != null) {
      ref.read(employeeProvider.notifier).updatedEmployee(Employee(
            employeeid: id,
            firstname: firstName,
            lastname: lastName,
            notes: notes,
          ));
    }

    state = AsyncData(
      state.value!.copyWith(selectedEmployee: null),
    );
  }
}
