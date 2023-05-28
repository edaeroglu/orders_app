import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../features/orders/domain/models/customer.dart';
import '../../features/orders/domain/models/employee.dart';
import '../../features/orders/domain/models/shipper.dart';

class CustomerDetailButton extends ConsumerWidget {
  const CustomerDetailButton({
    super.key,
    required this.customer,
    required this.customerAddress,
  });

  final Customer? customer;

  final String? customerAddress;

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
                  Text('Name: ${customer?.customername ?? ''}'),
                  Text('Country: ${customer?.country ?? ""}'),
                  Text('City: ${customer?.city ?? ''}'),
                  Text('Address: $customerAddress'),
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
                  Text('First Name: ${employee?.firstname ?? ""}'),
                  Text('Last Name: ${employee?.lastname ?? ""}'),
                  Text('Notes: ${employee?.notes ?? ""}'),
                  Text('Birth Date: ${employee?.birthdate ?? ""}'),
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
                  Text('Shipper Name: ${shipper?.shippername ?? ""}}'),
                  Text('Shipper Phone: ${shipper?.phone ?? ""}}}')
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
