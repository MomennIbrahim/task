import 'package:flutter/material.dart';

import '../../../../../constance.dart';
import '../../../../../core/utils/styles.dart';

class DetailsStore extends StatelessWidget {
  const DetailsStore({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65.0,
      child: Card(
        elevation: 1.5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.06),
                        spreadRadius: 5,
                        blurRadius: 4,
                        offset: const Offset(1, 3),
                      )
                    ],
                    image: const DecorationImage(
                        image: AssetImage(
                            'assets/images/acer-logo-0 1.png'))),
              ),
              const SizedBox(
                width: 12.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Acer Official Store',
                    style: Styles.textStyle16,
                  ),
                  Text(
                    'View Store',
                    style: Styles.textStyle14
                        .copyWith(color: const Color(0xffB1B1B1)),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.06),
                        spreadRadius: 5,
                        blurRadius: 4,
                        offset: const Offset(1, 3),
                      )
                    ]),
                width: 30.0,
                height: 30.0,
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                  color: kPrimaryColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
