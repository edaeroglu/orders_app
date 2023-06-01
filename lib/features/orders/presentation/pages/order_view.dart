import 'package:auto_route/auto_route.dart';
import 'package:deneme/features/orders/presentation/provider/order_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../product/components/buttons.dart';

@RoutePage()
class OrderView extends ConsumerWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: ref.watch(orderProvider).when(
              data: (state) {
                return ListView.builder(
                  itemCount: state.orders.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        final customer = state.orders[index].customer;
                        // final customerName = clickedCustomer.customername;
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text(' Details'),
                              content: Column(
                                children: [
                                  CustomerDetailButton(
                                    customer: state.orders[index].customer,
                                  ),
                                  EmployeeDetailsButton(
                                    employee: state.orders[index].employee,
                                  ),
                                  ShipperDetailsButton(
                                    shipper: state.orders[index].shipper,
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  child: const Text('Close'),
                                  onPressed: () {
                                    context.popRoute();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: ListTile(
                        title: Text(state.orders[index].orderid.toString()),
                        subtitle: Text(
                            state.orders[index].customer?.customername ?? ""),
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
