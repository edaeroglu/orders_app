import 'package:auto_route/auto_route.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../product/components/alert_dialog.dart';
import '../../../../product/components/dropdown_menu.dart';
import '../../domain/models/customer.dart';
import '../../domain/models/employee.dart';
import '../../domain/models/shipper.dart';
import '../components/buttons/crud_button.dart';
import '../provider/order_mutate_provider.dart';

@RoutePage()
class AddView extends ConsumerWidget {
  const AddView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read<GeneralNotifier>(generalProvider.notifier);
    return Scaffold(
        body: ref.watch(generalProvider).when(
              data: (state) {
                return Center(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 180),
                      ),
                      DropdownListMenu<Customer>(
                        items: state.customers,
                        text: "Customer Name",
                        onChanged: (item) {
                          provider.selectCustomer(
                            item ?? Customer(),
                          );
                        },
                        value: state.selectedCustomer,
                      ),
                      DropdownListMenu<Employee>(
                        items: state.employees,
                        text: "Employee Name",
                        onChanged: (item) {
                          provider.selectEmployee(
                            item ?? Employee(),
                          );
                        },
                        value: state.selectedEmployee,
                      ),
                      DropdownListMenu<Shipper>(
                        items: state.shippers,
                        text: "Shipper Name",
                        onChanged: (item) {
                          provider.selectShipper(
                            item ?? Shipper(),
                          );
                        },
                        value: state.selectedShipper,
                      ),
                      CrudButton(
                        onPressed: () async {
                          await ref
                              .read(generalProvider.notifier)
                              .insertOrder();
                          // ignore: use_build_context_synchronously
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const SuccessAlertDialog(
                                  text: "Adding Succesful",
                                );
                              });
                        },
                        text: "Add",
                      )
                    ],
                  ),
                );
              },
              error: (error, stackTrace) => Text(error.toString()),
              loading: () => const Center(child: CircularProgressIndicator()),
            ));
  }
}
