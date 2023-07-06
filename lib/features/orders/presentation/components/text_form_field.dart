import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormFields extends StatelessWidget {
  const TextFormFields({
    super.key,
    this.controller,
    this.text,
    this.labelText,
    this.keyboardType,
    this.maxLength,
    this.initialValue,
    this.inputFormatters,
  });

  final controller;
  final String? text;
  final String? labelText;
  final keyboardType;
  final maxLength;
  final String? initialValue;
  final inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: TextFormField(
        controller: controller,
        // validator: (value) {
        //   if (value == null || value.isEmpty) {
        //     return text;
        //   }
        //   return null;
        // },
        decoration: InputDecoration(
          labelText: labelText,
        ),
        keyboardType: keyboardType,
        maxLength: maxLength,
        initialValue: initialValue,
        inputFormatters: inputFormatters,
      ),
    );
  }
}
