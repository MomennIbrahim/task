import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_material_button.dart';

class PriceOfProduct extends StatelessWidget {
  const PriceOfProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Price',
              style: Styles.textStyle16
                  .copyWith(color: const Color(0xffB1B1B1)),
            ),
            const SizedBox(
              height: 7.0,
            ),
            const Text(
              '30,000 EGP',
              style: Styles.textStyle18,
            ),
          ],
        ),
        Expanded(
            child: CustomMaterialButton(
                style: Styles.textStyle16
                    .copyWith(color: Colors.white),
                text: 'Add to cart',
                height: 44.0,
                onPressed: () {}))
      ],
    );
  }
}
