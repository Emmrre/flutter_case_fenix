import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  final String? title;
  final TextInputType keyboardType;
  final String labelText;
  final TextEditingController? controller;
  final void Function()? onEditingComplete;
  final void Function(String)? onFieldSubmitted;
  final void Function(String)? onChanged;
  final Widget? suffix;
  const TextFieldComponent(
      {super.key,
      this.title,
      required this.keyboardType,
      required this.labelText,
      this.controller,
      this.onEditingComplete,
      this.onFieldSubmitted,
      this.onChanged,
      this.suffix});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: TextFormField(
        controller: controller,
        textInputAction: TextInputAction.next,
        keyboardType: keyboardType,
        onEditingComplete: onEditingComplete,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            suffixIcon: suffix,
            fillColor: Colors.transparent,
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.white)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            labelText: labelText,
            labelStyle: TextStyle(color: Colors.white)),
      ),
    );
  }
}
