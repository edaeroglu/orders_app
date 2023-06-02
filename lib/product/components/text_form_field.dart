import 'package:flutter/material.dart';

class UpdateTextField extends StatelessWidget {
  const UpdateTextField({
    super.key,
    this.text,
  });

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: text ?? "",
          border: const UnderlineInputBorder(
            borderSide: BorderSide(width: 3, color: Colors.greenAccent),
          ),
        ),
      ),
    );
  }
}
