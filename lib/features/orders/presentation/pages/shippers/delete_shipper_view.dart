import 'package:auto_route/auto_route.dart';
import 'package:deneme/features/orders/presentation/provider/shipper_provider.dart';
import 'package:deneme/product/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../product/components/alert_dialog.dart';
import '../../../../../product/components/dropdown_menu.dart';
import '../../../domain/models/shipper.dart';
import '../../components/buttons/crud_button.dart';

@RoutePage()
class DeleteShipperView extends ConsumerWidget {
  const DeleteShipperView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read<ShipperNotifier>(shipperProvider.notifier);

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
          body: ref.watch(shipperProvider).when(
                data: (state) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 220),
                      child: Column(children: [
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
                        SizedBox(height: 40.h),
                        CrudButton(
                          onPressed: () async {
                            await ref
                                .read(shipperProvider.notifier)
                                .deleteShipper();
                            // ignore: use_build_context_synchronously
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return SuccessAlertDialog(
                                  text: "Deletion Successful",
                                  onPressed: () {
                                    context.router.push(const ShipperRoute());
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
