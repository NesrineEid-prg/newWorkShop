import 'package:flutter/material.dart';

class CustumTextFormField extends StatelessWidget {
  const CustumTextFormField({
    super.key,
    this.hintText,
    this.controller,
    this.validator,
  });
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        fillColor: Colors.white,
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
