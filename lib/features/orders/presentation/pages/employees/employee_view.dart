import 'package:auto_route/auto_route.dart';
import 'package:deneme/features/orders/presentation/provider/employee_provider.dart';
import 'package:deneme/product/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class EmployeeView extends ConsumerWidget {
  const EmployeeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                context.router.push(const HomeRoute());
              },
            ),
            backgroundColor: Colors.red[200]),
        body: ref.watch(employeeProvider).when(
              data: (state) {
                return ListView.builder(
                  itemCount: state.employees.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        context.router.push(
                          UpdateEmployeeRoute(
                              employeeId:
                                  state.employees[index].employeeid ?? 0,
                              selectEmployee: state.employees[index]),
                        );
                      },
                      child: ListTile(
                        title:
                            Text(state.employees[index].firstname.toString()),
                        subtitle: Text(state.employees[index].lastname ?? ""),
                      ),
                    );
                  },
                );
              },
              error: (error, stackTrace) => Text(error.toString()),
              loading: () => const Center(
                  child: CircularProgressIndicator(
                color: Colors.blue,
              )),
            ),
      ),
    );
  }
}
