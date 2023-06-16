import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/models/customer.dart';

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
                title: Text(
                  'Customer Details',
                  style: TextStyle(color: Colors.purple[200]),
                ),
                content: SizedBox(
                  height: 270,
                  child: Column(
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
                ),
                actions: [
                  TextButton(
                    child: Text(
                      'Close',
                      style: TextStyle(color: Colors.purple[200]),
                    ),
                    onPressed: () {
                      context.popRoute();
                    },
                  ),
                ],
              );
            },
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple[200],
        ),
        child: const Text("Customer Details"));
  }
}
