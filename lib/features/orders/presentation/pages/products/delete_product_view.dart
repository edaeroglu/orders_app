import 'package:auto_route/auto_route.dart';
import 'package:deneme/features/orders/domain/models/product/product.dart';
import 'package:deneme/features/orders/presentation/provider/product_provider.dart';
import 'package:deneme/product/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../product/components/alert_dialog.dart';
import '../../../../../product/components/dropdown_menu.dart';
import '../../components/buttons/crud_button.dart';

@RoutePage()
class DeleteProductView extends ConsumerWidget {
  const DeleteProductView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 220),
                    child: Column(children: [
                      DropdownListMenu<Product>(
                        items: state.products,
                        text: "Product Name",
                        onChanged: (item) {
                          provider.selectProduct(
                            item ?? Product(),
                          );
                        },
                        value: state.selectedProduct,
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      CrudButton(
                          text: "Delete",
                          onPressed: () async {
                            await ref
                                .read(productProvider.notifier)
                                .deleteProduct();
                            // ignore: use_build_context_synchronously
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return SuccessAlertDialog(
                                    text: "Deleting Succesful",
                                    onPressed: () {
                                      context.router.push(const ProductRoute());
                                    },
                                  );
                                });
                          }),
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
            ));
  }
}
