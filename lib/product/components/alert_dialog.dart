import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routes/routes.dart';

class SuccessAlertDialog extends StatelessWidget {
  const SuccessAlertDialog({
    super.key,
    required this.text,
  });

  final String? text;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: SizedBox(
          height: (50),
          child: Align(
            alignment: Alignment.center,
            child: Text(text ?? ""),
          ),
        ),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
            ),
            onPressed: () {
              context.router.push(
                const OrderRoute(),
              );
            },
            child: const Text('Close'),
          ),
        ]);
  }
}
