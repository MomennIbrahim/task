import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/core/utils/styles.dart';
import 'package:task_app/core/widgets/custom_material_button.dart';
import 'package:task_app/features/home/presentation/views/widgets/custom_tabs_details.dart';
import 'package:task_app/features/home/presentation/views/widgets/details_back_button.dart';
import 'package:task_app/features/home/presentation/views/widgets/details_store.dart';
import 'package:task_app/features/home/presentation/views/widgets/image_details.dart';
import 'package:task_app/features/home/presentation/views/widgets/image_list_view_details.dart';
import 'package:task_app/features/home/presentation/views/widgets/price_of_product.dart';
import '../../../../constance.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.blue.withOpacity(.8),
              Colors.blue.withOpacity(.6),
              Colors.blue.withOpacity(.2),
              Colors.white12,
              Colors.white70,
              Colors.white,
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50.0,
                  ),
                  const DetailsBackButton(),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const Text(
                    'Predator Helios 300',
                    style: Styles.textStyle25,
                  ),
                  Text(
                    'Type: Gaming Laptop',
                    style: Styles.textStyle16.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const ImageDetails(),
                  const ImageListViewDetails(),
                  const SizedBox(
                    height: 29.0,
                  ),
                  const DetailsStore(),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const PriceOfProduct(),
                  const SizedBox(
                    height: 37.0,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const CustomTabsDetails(),
                  const SizedBox(
                    height: 35.0,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diamed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris.',
                    style: Styles.textStyle16
                        .copyWith(color: const Color(0xffB1B1B1)),
                  ),
                  const SizedBox(
                    height: 30.0,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
