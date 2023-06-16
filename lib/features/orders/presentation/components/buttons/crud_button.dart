import 'package:flutter/material.dart';

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
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red[200],
      ),
      child: Text(text),
    );
  }
}
