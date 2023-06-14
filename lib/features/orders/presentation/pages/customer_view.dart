import 'package:auto_route/auto_route.dart';
import 'package:deneme/product/components/buttons.dart';
import 'package:deneme/product/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class OptionsView extends ConsumerWidget {
  const OptionsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            children: [
              CrudButton(
                text: "Ekle",
                onPressed: () {
                  context.pushRoute(const AddRoute());
                },
              ),
              CrudButton(
                text: "Sil",
                onPressed: () {
                  context.pushRoute(const DeleteRoute());
                },
              ),
              CrudButton(
                text: "Güncelle",
                onPressed: () {
                  context.pushRoute(const UpdateRoute());
                },
              ),
              // CrudDropdownMenu(
              //   text: "Order",
              // ),
              // CrudDropdownMenu(
              //   text: "Customer",
              // ),
              // CrudDropdownMenu(
              //   text: "Employee",
              // ),
              // CrudDropdownMenu(
              //   text: "Shipper",
              // )
            ],
          ),
        ),
      )),
    );
  }
}
