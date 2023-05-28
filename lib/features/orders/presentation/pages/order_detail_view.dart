import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:deneme/features/orders/presentation/provider/order_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class OrderDetailView extends ConsumerWidget {
  const OrderDetailView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ref.watch(orderProvider).when(
          data: (state) {
            return Center(
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Customer")),
                  ElevatedButton(
                      onPressed: () {
                        // context.pushRoute(const EmployeeRoute());
                      },
                      child: const Text("Employee"))
                ],
              ),
            );
          },
          error: (error, stackTrace) => Text(error.toString()),
          loading: () => const Center(child: CircularProgressIndicator())),
    );
  }
}
