import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsBackButton extends StatelessWidget {
  const DetailsBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).pop();
      },
      child: Material(
        elevation: 10.0,
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0)),
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xffB1B1B1),
          ),
        ),
      ),
    );

  }
}
