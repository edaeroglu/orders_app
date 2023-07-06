import 'package:auto_route/auto_route.dart';
import 'package:deneme/features/orders/domain/models/employee.dart';
import 'package:deneme/features/orders/presentation/provider/employee_provider.dart';
import 'package:deneme/product/routes/routes.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../product/components/alert_dialog.dart';
import '../../../../../product/components/dropdown_menu.dart';
import '../../components/buttons/crud_button.dart';

@RoutePage()
class DeleteEmployeeView extends ConsumerWidget {
  const DeleteEmployeeView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read<EmployeeNotifier>(employeeProvider.notifier);

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  context.router.pop();
                },
              ),
              backgroundColor: Colors.red[200]),
          body: ref.watch(employeeProvider).when(
                data: (state) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 220),
                      child: Column(children: [
                        DropdownListMenu<Employee>(
                          items: state.employees,
                          text: "Employee First Name",
                          onChanged: (item) {
                            provider.selectEmployee(
                              item ?? Employee(),
                            );
                          },
                          value: state.selectedEmployee,
                        ),
                        SizedBox(height: 40.h),
                        CrudButton(
                          onPressed: () async {
                            await ref
                                .read(employeeProvider.notifier)
                                .deleteEmployee();
                            // ignore: use_build_context_synchronously
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return SuccessAlertDialog(
                                  text: "Deletion Successful",
                                  onPressed: () {
                                    context.router.push(const EmployeeRoute());
                                  },
                                );
                              },
                            );
                          },
                          text: "Delete",
                        ),
                      ]),
                    ),
                  );
                },
                error: (error, stackTrace) => Text(
                  error.toString(),
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
              )),
    );
  }
}
