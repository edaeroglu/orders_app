import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../domain/models/employee.dart';

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
              title: Text(
                'Employee Details',
                style: TextStyle(color: Colors.green[200]),
              ),
              content: SizedBox(
                height: 270,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Employee Id: ${employee?.employeeid}'),
                    Text('First Name: ${employee?.firstname}'),
                    Text('Last Name: ${employee?.lastname}'),
                    Text('Notes: ${employee?.notes}',
                        maxLines: 9, overflow: TextOverflow.ellipsis),
                    Text('Birth Date: ${employee?.birthdate}'),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  child: Text(
                    'Close',
                    style: TextStyle(color: Colors.green[200]),
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
        backgroundColor: Colors.green[200],
      ),
      child: const Text("Employee Details"),
    );
  }
}
