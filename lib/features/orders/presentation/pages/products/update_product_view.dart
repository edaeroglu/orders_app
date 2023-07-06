import 'package:auto_route/auto_route.dart';
import 'package:deneme/features/orders/presentation/components/text_form_field.dart';
import 'package:deneme/features/orders/presentation/provider/product_provider.dart';
import 'package:deneme/product/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../product/components/alert_dialog.dart';
import '../../components/buttons/crud_button.dart';

@RoutePage()
class UpdateProductView extends ConsumerWidget {
  const UpdateProductView(this.productId, this.selectProduct, {super.key});

  final int productId;
  final selectProduct;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read<ProductNotifier>(productProvider.notifier);
    TextEditingController nameController =
        TextEditingController(text: selectProduct.productname);
    TextEditingController priceController =
        TextEditingController(text: selectProduct.price.toString());
    TextEditingController unitController =
        TextEditingController(text: selectProduct.unit);
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
                          labelText: 'Enter Product Name',
                          controller: nameController,
                        ),
                        TextFormFields(
                          labelText: 'Enter Price',
                          controller: priceController,
                          keyboardType: TextInputType.number,
                          maxLength: 6,
                        ),
                        TextFormFields(
                          labelText: 'Enter Unit',
                          controller: unitController,
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        CrudButton(
                            text: "Update",
                            onPressed: () {
                              String name = nameController.text.trim();
                              double price = double.parse(priceController.text);
                              String unit = unitController.text.trim();

                              if (name.isNotEmpty &&
                                  price.isFinite &&
                                  unit.isNotEmpty) {
                                provider.updateProduct(name, unit, price,
                                    id: productId);
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SuccessAlertDialog(
                                        text: "Update Succesful",
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
