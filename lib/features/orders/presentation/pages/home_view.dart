import 'package:auto_route/auto_route.dart';
import 'package:deneme/product/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../product/components/dropdown_menu.dart';

@RoutePage()
class HomeView extends ConsumerWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 240.h),
          child: Column(
            children: [
              Row(
                children: [
                  DropdownButtonCategories(
                      text: "Orders",
                      onTapAdd: () {
                        context.router.push(const AddOrderRoute());
                      },
                      onTapDelete: () {
                        context.router.push(const DeleteOrderRoute());
                      },
                      onTapUpdate: () {
                        context.router.push(const OrderRoute());
                      }),
                  const SizedBox(
                    width: 20,
                  ),
                  DropdownButtonCategories(
                    text: "Shippers",
                    onTapAdd: () {
                      context.router.push(const AddShipperRoute());
                    },
                    onTapDelete: () {
                      context.router.push(const DeleteShipperRoute());
                    },
                    onTapUpdate: () {
                      context.router.push(const ShipperRoute());
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  DropdownButtonCategories(
                    text: "Employees",
                    onTapAdd: () {
                      context.router.push(const AddEmployeeRoute());
                    },
                    onTapDelete: () {
                      context.router.push(const DeleteEmployeeRoute());
                    },
                    onTapUpdate: () {
                      context.router.push(const EmployeeRoute());
                    },
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  DropdownButtonCategories(
                    text: "Products",
                    onTapAdd: () {
                      context.router.push(const AddProductRoute());
                    },
                    onTapDelete: () {
                      context.router.push(const DeleteProductRoute());
                    },
                    onTapUpdate: () {
                      context.router.push(const ProductRoute());
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
