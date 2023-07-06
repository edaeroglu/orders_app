import 'package:auto_route/auto_route.dart';
import 'package:deneme/features/orders/presentation/provider/product_provider.dart';
import 'package:deneme/product/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class ProductView extends ConsumerWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                context.router.push(const HomeRoute());
              },
            ),
            backgroundColor: Colors.red[200]),
        body: ref.watch(productProvider).when(
              data: (state) {
                return ListView.builder(
                  itemCount: state.products.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        context.router.push(
                          UpdateProductRoute(
                              productId: state.products[index].productid ?? 0,
                              selectProduct: state.products[index]),
                        );
                      },
                      child: ListTile(
                        title:
                            Text(state.products[index].productname.toString()),
                        subtitle: Text(state.products[index].unit ?? ""),
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
