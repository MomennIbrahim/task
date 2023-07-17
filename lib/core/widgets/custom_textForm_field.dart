import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.labelText, required this.controller, required this.keyboardType, this.style,});

  final String labelText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 44.5),
      child: Container(
        height: MediaQuery.of(context).size.height / 13,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.04),
                spreadRadius: 5,
                blurRadius: 5,
                offset: const Offset(1, 3),
              )
            ]
        ),
        child: TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: labelText,
            hintStyle: style,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
          ),
        ),
      ),
    );
  }
}
