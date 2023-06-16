import 'package:auto_route/auto_route.dart';
import 'package:deneme/features/orders/domain/models/customer.dart';
import 'package:deneme/features/orders/presentation/provider/order_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../product/components/alert_dialog.dart';
import '../../../../product/components/dropdown_menu.dart';
import '../../domain/models/employee.dart';
import '../../domain/models/shipper.dart';
import '../components/buttons/crud_button.dart';

@RoutePage()
class UpdateView extends ConsumerWidget {
  final int orderId;
  const UpdateView({required this.orderId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read<OrderNotifier>(orderProvider.notifier);
    return Scaffold(
      body: ref.watch(orderProvider).when(
            data: (state) {
              return Center(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 140),
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
                    // const UpdateTextField(text: "Customer Name"),
                    const SizedBox(
                      height: 40,
                    ),
                    CrudButton(
                      onPressed: () async {
                        await ref
                            .read(orderProvider.notifier)
                            .updateOrder(id: orderId);
                        // ignore: use_build_context_synchronously
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const SuccessAlertDialog(
                                text: "Update Successful");
                          },
                        );
                      },
                      text: "Update",
                    ),
                  ],
                ),
              );
            },
            error: (error, stackTrace) => Text(
              error.toString(),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
            ),
          ),
    );
  }
}
