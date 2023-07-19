import 'package:auto_route/auto_route.dart';
import 'package:deneme/features/orders/presentation/provider/shipper_provider.dart';
import 'package:deneme/product/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../../../product/components/alert_dialog.dart';
import '../../components/buttons/crud_button.dart';
import '../../components/text_form_field.dart';

@RoutePage()
class AddShipperView extends ConsumerWidget {
  const AddShipperView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read<ShipperNotifier>(shipperProvider.notifier);
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    return Scaffold(
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
                return SingleChildScrollView(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 150.w),
                      child: Column(children: [
                        TextFormFields(
                          controller: nameController,
                          labelText: 'Enter Shipper Name',
                          keyboardType: TextInputType.name,
                        ),
                        TextFormFields(
                          controller: phoneController,
                          labelText: 'Enter Phone Number',
                          keyboardType: TextInputType.phone,
                          maxLength: 14,
                          inputFormatters: [
                            MaskTextInputFormatter(
                              mask: '(###) ###-####',
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        CrudButton(
                          text: "Add",
                          onPressed: () {
                            String name = nameController.text.trim();
                            String phone = phoneController.text.trim();
                            if (name.isNotEmpty && phone.isNotEmpty) {
                              provider.insertShipper(name, phone);
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return SuccessAlertDialog(
                                    text: "Adding Successful",
                                    onPressed: () {
                                      context.router.push(const ShipperRoute());
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
                          },
                        ),
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
