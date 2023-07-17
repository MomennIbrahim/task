import 'package:flutter/material.dart';

class CustomTextFormFieldVerify extends StatelessWidget {
  const CustomTextFormFieldVerify({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.09),
            spreadRadius: 5,
            blurRadius: 5,
            offset: const Offset(2, 4),
          )
        ]
      ),
      width: 70.0,
      height: 80.0,
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          focusedBorder: outlineInputBorder(),
          enabledBorder: outlineInputBorder(),
        ),
      ),
    );
  }

  outlineInputBorder(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
      borderSide: const BorderSide(color: Colors.transparent),
    );
  }

}
