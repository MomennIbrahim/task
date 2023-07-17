import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/features/home/presentation/controller/home_cubit/home_cubit.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_grid_view_item.dart';

class CustomTabBarView extends StatelessWidget {
  const CustomTabBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: [
          Tab(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    'Recomended for You',
                    style: Styles.textStyle30.copyWith(
                      color: const Color(0xff464646),
                    ),
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    padding: const EdgeInsets.all(16.0),
                    itemCount: 6,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: .7,
                      mainAxisSpacing: 16.0,
                      crossAxisSpacing: 16.0,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return CustomGridViewItem(
                        index: index,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const Tab(
            icon: Icon(Icons.motorcycle),
          ),
          const Tab(
            icon: Icon(Icons.motorcycle),
          ),
        ],
      ),
    );
  }
}
