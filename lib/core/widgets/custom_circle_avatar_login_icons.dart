import 'package:flutter/material.dart';
import 'package:task_app/core/utils/styles.dart';

class CustomCircleAvatarLoginIcon extends StatelessWidget {
  const CustomCircleAvatarLoginIcon({super.key, this.image, required this.isImage, this.text});

  final String? image;
  final String? text;
  final bool isImage;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.03),
                spreadRadius: 5,
                blurRadius: 5,
                offset: const Offset(1, 3),
              ),
            ]
        ),
        child: CircleAvatar(
          radius: 40.0,
          backgroundColor: Colors.white,
          child:isImage? Image(image: AssetImage(image!)) : Text(text!,style: Styles.textStyle50,),
        ),
      ),
    );
  }
}
