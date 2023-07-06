import 'package:auto_route/auto_route.dart';
import 'package:deneme/features/orders/presentation/provider/product_provider.dart';
import 'package:deneme/product/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../product/components/alert_dialog.dart';
import '../../components/buttons/crud_button.dart';
import '../../components/text_form_field.dart';

@RoutePage()
class AddProductView extends ConsumerWidget {
  const AddProductView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController nameController = TextEditingController();
    TextEditingController priceController = TextEditingController();
    TextEditingController unitController = TextEditingController();
    final provider = ref.read<ProductNotifier>(productProvider.notifier);
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                context.router.pop();
              },
            ),
            backgroundColor: Colors.red[200]),
        body: ref.watch(productProvider).when(
              data: (state) {
                return SingleChildScrollView(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 150.w),
                      child: Column(children: [
                        TextFormFields(
                          controller: nameController,
                          labelText: 'Enter Product Name',
                        ),
                        TextFormFields(
                          labelText: 'Enter Price',
                          controller: priceController,
                          keyboardType: TextInputType.number,
                          maxLength: 6,
                        ),
                        TextFormFields(
                          controller: unitController,
                          labelText: 'Enter Unit',
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        CrudButton(
                            text: "Add",
                            onPressed: () {
                              String name = nameController.text.trim();
                              String unit = unitController.text.trim();
                              double price = double.parse(priceController.text);
                              if (name.isNotEmpty &&
                                  unit.isNotEmpty &&
                                  price.isFinite) {
                                provider.insertProduct(name, unit, price);
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SuccessAlertDialog(
                                        text: "Adding Succesful",
                                        onPressed: () {
                                          context.router
                                              .push(const ProductRoute());
                                        },
                                      );
                                    });
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return const UnsuccessfulAlertDialog();
                                  },
                                );
                              }
                            }),
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
