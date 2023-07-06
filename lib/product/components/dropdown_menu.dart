import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return DropdownButtonHideUnderline(
      child: DropdownButton2<T>(
        value: value,
        isExpanded: true,
        hint: Text(
          text ?? "",
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
        buttonStyleData: ButtonStyleData(
          height: 40.h,
          width: 180.w,
        ),
        menuItemStyleData: MenuItemStyleData(
          height: 45.h,
        ),
      ),
    );
  }
}

class DropdownButtonCategories extends StatelessWidget {
  const DropdownButtonCategories({
    super.key,
    this.text,
    this.onTapAdd,
    this.onTapDelete,
    this.onTapUpdate,
  });

  final String? text;
  final void Function()? onTapAdd;
  final void Function()? onTapDelete;
  final void Function()? onTapUpdate;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        items: [
          DropdownMenuItem(
            value: 1,
            onTap: onTapAdd,
            child: const Text("Add"),
          ),
          DropdownMenuItem(
            value: 2,
            onTap: onTapDelete,
            child: const Text("Delete"),
          ),
          DropdownMenuItem(
            value: 3,
            onTap: onTapUpdate,
            child: const Text("Update"),
          ),
        ],
        buttonStyleData: ButtonStyleData(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          height: 150.h,
          width: 170.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.blue[100],
          ),
        ),
        onChanged: (value) {},
        hint: Text(
          text ?? "",
        ),
      ),
    );
  }
}
