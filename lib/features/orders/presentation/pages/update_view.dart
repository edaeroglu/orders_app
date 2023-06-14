import 'package:auto_route/auto_route.dart';
import 'package:deneme/features/orders/domain/models/customer_model/customer_model.dart';
import 'package:deneme/features/orders/presentation/provider/order_mutate_provider.dart';
import 'package:deneme/product/components/buttons.dart';
import 'package:deneme/product/routes/routes.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/models/employee_model/employee_model.dart';
import '../../domain/models/shipper_model/shipper_model.dart';

@RoutePage()
class UpdateView extends ConsumerWidget {
  const UpdateView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read<GeneralNotifier>(generalProvider.notifier);
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: ref.watch(generalProvider).when(
              data: (state) {
                return Center(
                  child: Column(
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 140)),
                      DropdownMenu<CustomerModel>(
                        items: state.customers,
                        text: "Customer Name",
                        onChanged: (item) {
                          provider.selectCustomer(item ?? CustomerModel());
                        },
                        value: state.selectedCustomer,
                      ),
                      DropdownMenu<EmployeeModel>(
                        items: state.employees,
                        text: "Employee Name",
                        onChanged: (item) {
                          provider.selectEmployee(item ?? EmployeeModel());
                        },
                        value: state.selectedEmployee,
                      ),
                      DropdownMenu<ShipperModel>(
                        items: state.shippers,
                        text: "Shipper Name",
                        onChanged: (item) {
                          provider.selectShipper(item ?? ShipperModel());
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
                              .read(generalProvider.notifier)
                              .updateOrder();
                          // ignore: use_build_context_synchronously
                          context.router.popAndPush(const OrderRoute());
                        },
                        text: "Güncelle",
                      )
                    ],
                  ),
                );
              },
              error: (error, stackTrace) => Text(error.toString()),
              loading: () => const Center(
                  child: CircularProgressIndicator(
                color: Colors.blue,
              )),
            ),
      )),
    );
  }
}

class DropdownMenu<T> extends ConsumerWidget {
  const DropdownMenu({
    super.key,
    required this.onChanged,
    required this.items,
    required this.value,
    this.text,
  });

  final String? text;
  final List<T> items;
  final void Function(T?)? onChanged;
  final T? value;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final customerId = ref.read(customerProvider).customerId;
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<T>(
          value: value,
          isExpanded: true,
          hint: Text(
            text ?? "",
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          items: items
              .map((item) => DropdownMenuItem<T>(
                    value: item,
                    child: Text(
                      item.toString(),
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
              .toList(),
          onChanged: onChanged,
          buttonStyleData: const ButtonStyleData(
            height: 40,
            width: 140,
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
          ),
        ),
      ),
    );
  }
}
