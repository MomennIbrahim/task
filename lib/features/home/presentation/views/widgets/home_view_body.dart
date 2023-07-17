import 'package:flutter/material.dart';
import 'package:task_app/features/home/presentation/views/widgets/search_text_field.dart';
import 'package:task_app/features/home/presentation/views/widgets/tab_bar_view.dart';

import 'buttons_tab_bar.dart';
import 'home_image.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50.0,
          ),
          SearchTextField(),
          SizedBox(
            height: 22.0,
          ),
          HomeImage(),
          SizedBox(
            height: 14,
          ),
          CustomButtonsTabBar(),
          CustomTabBarView(),
        ],
      ),
    );
  }
}
