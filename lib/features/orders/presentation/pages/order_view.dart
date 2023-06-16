import 'package:auto_route/auto_route.dart';
import 'package:deneme/features/orders/presentation/provider/order_provider.dart';
import 'package:deneme/product/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../components/buttons/customer_detail_button.dart';
import '../components/buttons/employee_detail_button.dart';
import '../components/buttons/shipper_detail_button.dart';

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
                        // final customerName = clickedCustomer.customername;
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Order Details'),
                              content: SizedBox(
                                height: 270,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                    const SizedBox(height: 20),
                                    ElevatedButton(
                                        onPressed: () {
                                          context.router.push(UpdateRoute(
                                              orderId:
                                                  state.orders[index].orderid ??
                                                      0));
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.pink[200],
                                        ),
                                        child: const Text("Update")),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                  ),
                                  onPressed: () {
                                    context.popRoute();
                                  },
                                  child: const Text('Close'),
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
