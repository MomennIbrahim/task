import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class CustomButtonsTabBar extends StatelessWidget {
  const CustomButtonsTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ButtonsTabBar(
        backgroundColor: Colors.blue[600],
        elevation: 5.0,
        labelSpacing: 10,
        height: 55.0,
        contentPadding: const EdgeInsets.symmetric(horizontal: 40.0),
        unselectedBackgroundColor: Colors.white,
        labelStyle: const TextStyle(
          color: Colors.white,
          fontSize: 22.0,
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
        unselectedBorderColor: Colors.blue[600]!,
        radius: 30.0,
        tabs: const [
          Tab(
            text: 'All',
            icon: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.white,
              child: Image(
                  image: AssetImage(
                      'assets/images/vector-trophy-cup-icon 1.png')),
            ),
          ),
          Tab(
            text: 'Acer',
            icon: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.white,
              child: Image(
                  image: AssetImage('assets/images/acer image.png')),
            ),
          ),
          Tab(
            text: 'Razer',
            icon: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.white,
              child: Image(
                  image: AssetImage('assets/images/acer image.png')),
            ),
          ),
        ],
      ),
    );
  }
}
