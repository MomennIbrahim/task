import 'package:flutter/material.dart';
import 'package:task_app/constance.dart';
import 'package:task_app/core/utils/styles.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.text, required this.textAnswer});

  final String text;
  final String textAnswer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
      child: SizedBox(
        height: 48.0,
        child: Card(
          elevation: 3.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text,style: Styles.textStyle16.copyWith(color: kPrimaryColor),),
                      Text(textAnswer,style: Styles.textStyle16.copyWith(color: Colors.black),maxLines: 1,overflow: TextOverflow.ellipsis,),
                    ],
                  ),
                ),

                const Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xff464646),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
