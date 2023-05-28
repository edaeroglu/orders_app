// import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/add_order_provider.dart';

@RoutePage()
class CustomerView extends ConsumerWidget {
  const CustomerView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: ref.watch(customerProvider).when(
              data: (state) {
                return ListView.builder(
                  itemCount: state.customers.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      child: ListTile(
                        title:
                            Text(state.customers[index].customerid.toString()),
                        subtitle: Text(
                            state.customers[index].customername.toString()),
                      ),
                    );
                  },
                );
              },
              error: (error, stackTrace) => Text(error.toString()),
              loading: () => const Center(child: CircularProgressIndicator()),
            ),
      ),
    );
  }
}
