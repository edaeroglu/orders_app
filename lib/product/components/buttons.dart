import 'package:auto_route/auto_route.dart';
import 'package:deneme/features/orders/domain/models/order_detail.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../features/orders/domain/models/customer.dart';
import '../../features/orders/domain/models/employee.dart';
import '../../features/orders/domain/models/shipper.dart';

class CrudButton extends StatelessWidget {
  const CrudButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(text));
  }
}

class CustomerDetailButton extends ConsumerWidget {
  const CustomerDetailButton({
    super.key,
    required this.customer,
  });

  final Customer? customer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Customer Details'),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Customer Id: ${customer?.customerid}'),
                  Text('Name: ${customer?.customername}'),
                  Text('Country: ${customer?.country}'),
                  Text('City: ${customer?.city}'),
                  Text('Address: ${customer?.address}'),
                  Text('Contact Name: ${customer?.contactname}')
                ],
              ),
              actions: [
                TextButton(
                  child: const Text('Close'),
                  onPressed: () {
                    context.popRoute();
                  },
                ),
              ],
            );
          },
        );
      },
      child: const Text("Customer Details"),
    );
  }
}

class EmployeeDetailsButton extends StatelessWidget {
  const EmployeeDetailsButton({
    super.key,
    required this.employee,
  });

  final Employee? employee;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Employee Details'),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Employee Id: ${employee?.employeeid}'),
                  Text('First Name: ${employee?.firstname}'),
                  Text('Last Name: ${employee?.lastname}'),
                  Text('Notes: ${employee?.notes}'),
                  Text('Birth Date: ${employee?.birthdate}'),
                ],
              ),
              actions: [
                TextButton(
                  child: const Text('Close'),
                  onPressed: () {
                    context.popRoute();
                  },
                ),
              ],
            );
          },
        );
      },
      child: const Text("Employee Details"),
    );
  }
}

class ShipperDetailsButton extends StatelessWidget {
  const ShipperDetailsButton({
    super.key,
    required this.shipper,
  });

  final Shipper? shipper;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Shipper Details'),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Shipper Id: ${shipper?.shipperid}'),
                  Text('Shipper Name: ${shipper?.shippername}'),
                  Text('Shipper Phone: ${shipper?.phone}'),
                ],
              ),
              actions: [
                TextButton(
                  child: const Text('Close'),
                  onPressed: () {
                    context.popRoute();
                  },
                ),
              ],
            );
          },
        );
      },
      child: const Text("Shipper Details"),
    );
  }
}

class ProductDetailsButton extends StatelessWidget {
  const ProductDetailsButton({
    super.key,
    required this.orderDetail,
  });

  final OrderDetail? orderDetail;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Product Details'),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Product Id: ${orderDetail?.productid}'),
                ],
              ),
              actions: [
                TextButton(
                  child: const Text('Close'),
                  onPressed: () {
                    context.popRoute();
                  },
                ),
              ],
            );
          },
        );
      },
      child: const Text("Product Details"),
    );
  }
}
