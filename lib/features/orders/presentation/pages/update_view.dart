import 'package:auto_route/annotations.dart';
import 'package:deneme/features/orders/presentation/provider/order_mutate_provider.dart';
import 'package:deneme/features/orders/presentation/provider/order_provider.dart';
import 'package:deneme/product/components/buttons.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../product/components/text_form_field.dart';

@RoutePage()
class UpdateView extends ConsumerWidget {
  const UpdateView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
          body: ref.watch(orderProvider).when(
                data: (state) {
                  return Column(
                    children: [
                      const UpdateTextField(text: "Customer Name"),
                      const UpdateTextField(text: "Employee Name"),
                      const UpdateTextField(text: "Shipper Name"),
                      const UpdateTextField(text: "Product Name"),
                      const SizedBox(
                        height: 40,
                      ),
                      CrudButton(
                        text: "Güncelle",
                        onPressed: () async {
                          await ref
                              .read(generalProvider.notifier)
                              .updateOrder();
                        },
                      )
                    ],
                  );
                },
                error: (error, stackTrace) => Text(error.toString()),
                loading: () => const Center(
                    child: CircularProgressIndicator(
                  color: Colors.blue,
                )),
              )),
    );
  }
}
