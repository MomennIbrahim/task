import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Container(
            width: double.infinity,
            height: 176,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                    image: AssetImage(
                        'assets/images/Acer-Predator-Helios-300-2021 2.png'),
                    fit: BoxFit.cover)),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 40.0, bottom: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'New Release',
                style: Styles.textStyle10,
              ),
              Text(
                'Acer Predator Helios 300',
                style: Styles.textStyle10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
