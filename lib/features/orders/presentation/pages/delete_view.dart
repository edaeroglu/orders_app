import 'package:auto_route/auto_route.dart';
import 'package:deneme/features/orders/domain/models/order_model.dart';
import 'package:deneme/features/orders/presentation/provider/order_provider.dart';
import 'package:deneme/product/components/buttons.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../product/components/alert_dialog.dart';

@RoutePage()
class DeleteView extends ConsumerWidget {
  const DeleteView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read<OrderNotifier>(orderProvider.notifier);

    return SafeArea(
      child: Scaffold(
          body: ref.watch(orderProvider).when(
                data: (state) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 220),
                      child: Column(children: [
                        DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            isExpanded: true,
                            hint: Text(
                              "Order Id",
                              style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).hintColor,
                              ),
                            ),
                            value: state.selectedOrder,
                            items: state.orders
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e.orderid.toString(),
                                    ),
                                  ),
                                )
                                .toList(),
                            onChanged: (item) {
                              provider.selectOrder(
                                item ?? OrderModel(),
                              );
                            },
                            menuItemStyleData: const MenuItemStyleData(
                              height: 40,
                            ),
                            buttonStyleData: const ButtonStyleData(
                              height: 40,
                              width: 140,
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        CrudButton(
                          onPressed: () async {
                            await ref
                                .read(orderProvider.notifier)
                                .deleteOrder();
                            // ignore: use_build_context_synchronously
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const SuccessAlertDialog(
                                    text: "Deletion Successful");
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
