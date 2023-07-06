import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SuccessAlertDialog extends StatelessWidget {
  const SuccessAlertDialog({
    super.key,
    required this.text,
    this.onPressed,
  });

  final String? text;
  final void Function()? onPressed;

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
            onPressed: onPressed,
            child: const Text('Close'),
          ),
        ]);
  }
}

class UnsuccessfulAlertDialog extends StatelessWidget {
  const UnsuccessfulAlertDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: const Text(
          "Please enter the required information",
          style: TextStyle(fontWeight: FontWeight.normal),
        ),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
            ),
            onPressed: () {
              context.router.pop();
            },
            child: const Text('Close'),
          ),
        ]);
  }
}
