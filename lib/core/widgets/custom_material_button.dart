import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({super.key, required this.style, required this.text, required this.height, required this.onPressed});

  final TextStyle style ;
  final String text ;
  final double height ;
  final Function onPressed ;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 44.5),
      child: Container(
          height: height,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              gradient: LinearGradient(colors: [
                Colors.blue.withOpacity(1),
                Colors.blue.withOpacity(0.8),
                Colors.blue.withOpacity(0.5),
              ])),
          child: MaterialButton(
            onPressed: () {
              onPressed();
            },
            child:  Text(
              text,
              style: style,
            ),
          )),
    );
  }
}
