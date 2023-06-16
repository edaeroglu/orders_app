import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DropdownListMenu<T> extends ConsumerWidget {
  const DropdownListMenu({
    super.key,
    required this.onChanged,
    required this.items,
    required this.value,
    this.text,
  });

  final String? text;
  final List<T> items;
  final void Function(T?)? onChanged;
  final T? value;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final customerId = ref.read(customerProvider).customerId;
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<T>(
          value: value,
          isExpanded: true,
          hint: Text(
            text ?? "",
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          items: items
              .map((item) => DropdownMenuItem<T>(
                    value: item,
                    child: Text(
                      item.toString(),
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
              .toList(),
          onChanged: onChanged,
          buttonStyleData: const ButtonStyleData(
            height: 40,
            width: 140,
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 45,
          ),
        ),
      ),
    );
  }
}
