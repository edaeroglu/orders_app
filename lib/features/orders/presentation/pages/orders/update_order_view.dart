import 'package:auto_route/auto_route.dart';
import 'package:deneme/features/orders/domain/models/customer.dart';
import 'package:deneme/features/orders/presentation/provider/order_provider.dart';
import 'package:deneme/product/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../product/components/alert_dialog.dart';
import '../../../../../product/components/dropdown_menu.dart';
import '../../../domain/models/employee.dart';
import '../../../domain/models/shipper.dart';
import '../../components/buttons/crud_button.dart';

@RoutePage()
class UpdateOrderView extends ConsumerWidget {
  final int orderId;
  const UpdateOrderView(
    this.orderId, {
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read<OrderNotifier>(orderProvider.notifier);
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              context.router.pop();
            },
          ),
          backgroundColor: Colors.red[200]),
      body: ref.watch(orderProvider).when(
            data: (state) {
              return SingleChildScrollView(
                child: Center(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 150.w),
                    child: Column(
                      children: [
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
                        SizedBox(height: 20.h),
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
                        SizedBox(
                          height: 20.h,
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
                        SizedBox(
                          height: 40.h,
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
                                return SuccessAlertDialog(
                                  text: "Update Successful",
                                  onPressed: () {
                                    context.router.push(const OrderRoute());
                                  },
                                );
                              },
                            );
                          },
                          text: "Update",
                        ),
                      ],
                    ),
                  ),
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
