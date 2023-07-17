import 'package:flutter/material.dart';

class CustomImageBackGround extends StatelessWidget {
  const CustomImageBackGround({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Opacity(
        opacity: .75,
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
              Colors.blue.withOpacity(0.25), BlendMode.srcATop),
          child: Container(
            width: double.infinity,
            height: 386.0,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/login_image.png'),
                    fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }
}
