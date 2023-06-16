import 'package:auto_route/auto_route.dart';
import 'package:deneme/features/orders/domain/models/order_model.dart';
import 'package:deneme/features/orders/presentation/provider/order_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../product/components/alert_dialog.dart';
import '../components/buttons/crud_button.dart';
import '../../../../product/components/dropdown_menu.dart';

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
                        DropdownListMenu<OrderModel>(
                          items: state.orders,
                          text: "Order Id",
                          onChanged: (item) {
                            provider.selectOrder(
                              item ?? OrderModel(),
                            );
                          },
                          value: state.selectedOrder,
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
