import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class CustomTabsDetails extends StatelessWidget {
  const CustomTabsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          children: [
            Text(
              'Overview',
              style: Styles.textStyle18,
            ),
            SizedBox(
              height: 7.0,
            ),
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 3.0,
            )
          ],
        ),
        Column(
          children: [
            Text(
              'Spesification',
              style:
              Styles.textStyle18.copyWith(color: Colors.grey),
            ),
            const SizedBox(
              height: 7.0,
            ),
            const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 3.0,
            )
          ],
        ),
         Column(
          children: [
            Text(
              'Review',
              style: Styles.textStyle18.copyWith(color: Colors.grey),
            ),
            const SizedBox(
              height: 7.0,
            ),
            const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 3.0,
            )
          ],
        ),
      ],
    );
  }
}
