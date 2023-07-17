import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

    initSlidingAnimation();
    navigateToOtherPage();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context,_){
          return  Container(
            width: double.infinity,
            color: const Color(0xff0062BD),
            child:  Center(
                child: SlideTransition(
                  position: slidingAnimation,
                  child: const Image(
                    image: AssetImage('assets/images/pngegg 2.png'),
                    fit: BoxFit.cover,
                    width: 269.0,
                    height: 208.0,
                  ),
                )),
          );
        },
      ),
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 15), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void navigateToOtherPage() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        GoRouter.of(context).pushReplacement(AppRouter.kLoginView);
      },
    );
  }
}
