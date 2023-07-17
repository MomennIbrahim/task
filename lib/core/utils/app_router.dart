import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/constance.dart';
import 'package:task_app/features/home/presentation/views/details_view.dart';
import 'package:task_app/features/home/presentation/views/home_view.dart';
import 'package:task_app/features/login/presentation/views/help_view.dart';
import 'package:task_app/features/login/presentation/views/login_view.dart';
import '../../features/login/presentation/views/verify_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {

  static const kLoginView = '/loginView';
  static const kVerifyView = '/verifyView';
  static const kHelpView = '/helpView';
  static const kHomeView = '/homeView';
  static const kDetailsView = '/detailsView';

  static final GoRouter router = GoRouter(routes:<RouteBase> [
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          if(id !=null)
            {
              return const HomeView();
            }else{
            return const SplashView();
          }
        }),

    GoRoute(
        path: kLoginView,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginView();
        }),

    GoRoute(
        path: kVerifyView,
        builder: (BuildContext context, GoRouterState state) {
          return const VerifyView();
        }),

    GoRoute(
        path: kHelpView,
        builder: (BuildContext context, GoRouterState state) {
          return const HelpView();
        }),

    GoRoute(
        path: kDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return const DetailsView();
        }),

    GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        }),
  ]);
}
