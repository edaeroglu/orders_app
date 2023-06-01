import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../product/components/dropdown_menu.dart';

@RoutePage()
class CustomerView extends ConsumerWidget {
  const CustomerView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            children: [
              CrudDropdownMenu(
                text: "Order",
              ),
              CrudDropdownMenu(
                text: "Customer",
              ),
              CrudDropdownMenu(
                text: "Employee",
              ),
              CrudDropdownMenu(
                text: "Shipper",
              )
            ],
          ),
        ),
      )),
    );
  }
}
