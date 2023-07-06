import 'package:auto_route/auto_route.dart';
import 'package:deneme/features/orders/presentation/provider/employee_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../product/components/alert_dialog.dart';
import '../../../../../product/routes/routes.dart';
import '../../components/buttons/crud_button.dart';
import '../../components/text_form_field.dart';

@RoutePage()
class UpdateEmployeeView extends ConsumerWidget {
  const UpdateEmployeeView(this.employeeId, this.selectEmployee, {super.key});

  final int employeeId;
  final selectEmployee;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read<EmployeeNotifier>(employeeProvider.notifier);
    TextEditingController firstNameController =
        TextEditingController(text: selectEmployee.firstname);
    TextEditingController lastNameController =
        TextEditingController(text: selectEmployee.lastname);
    TextEditingController notesController =
        TextEditingController(text: selectEmployee.notes);
    return Scaffold(
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
                return SingleChildScrollView(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 150.w),
                      child: Column(children: [
                        TextFormFields(
                          controller: firstNameController,
                          labelText: 'Enter First Name',
                        ),
                        TextFormFields(
                          controller: lastNameController,
                          labelText: 'Enter Last Name',
                        ),
                        TextFormFields(
                          controller: notesController,
                          labelText: 'Enter Notes',
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        CrudButton(
                            text: "Update",
                            onPressed: () {
                              String firstName =
                                  firstNameController.text.trim();
                              String lastName = lastNameController.text.trim();
                              String notes = notesController.text.trim();

                              if (firstName.isNotEmpty &&
                                  lastName.isNotEmpty &&
                                  notes.isNotEmpty) {
                                provider.updateEmployee(
                                    firstName, lastName, notes,
                                    id: employeeId);
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return SuccessAlertDialog(
                                      text: "Update Successful",
                                      onPressed: () {
                                        context.router
                                            .push(const EmployeeRoute());
                                      },
                                    );
                                  },
                                );
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return const UnsuccessfulAlertDialog();
                                  },
                                );
                              }
                            }),
                      ]),
                    ),
                  ),
                );
              },
              error: (error, stackTrace) => Text(
                error.toString(),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
            ));
  }
}
