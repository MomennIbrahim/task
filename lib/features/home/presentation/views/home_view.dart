import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:task_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(
            Icons.exit_to_app,
            color: Colors.white,
          ),
          Icon(Icons.favorite, color: Colors.white),
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.notifications, color: Colors.white),
          Icon(Icons.settings, color: Colors.white),
        ],
        index: 2,
        backgroundColor: Colors.white,
        color: Colors.grey[300]!,
        buttonBackgroundColor: Colors.blue,
      ),
      body: const DefaultTabController(
        length: 3,
        child: HomeViewBody(),
      ),
    );
  }
}
