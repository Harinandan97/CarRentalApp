import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final String? hint;
  final bool filled;
  final Color fillColor;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextEditingController? controller;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final Widget? Icon;

  const CustomTextField({
    this.Icon,
    super.key,
    this.label,
    this.hint,
    this.filled = true,
    this.fillColor = const Color(0xFFF3F3F3),
    this.enabledBorder,
    this.focusedBorder,
    this.controller,
    this.borderColor,
    this.focusedBorderColor,
    this.validator,
    this.obscureText = false,
    this.keyboardType,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      obscureText: obscureText,
      keyboardType: keyboardType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        suffixIcon:Icon ,
        labelText: label,
        hintText: hint,
        filled: filled,
        fillColor: fillColor,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        errorStyle: const TextStyle(
          fontSize: 12,
          color: Colors.red,
        ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: borderColor ?? const Color(0xFFF3F3F3),
              ),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: focusedBorderColor ?? const Color(0xFFF3F3F3),
              ),
            ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
