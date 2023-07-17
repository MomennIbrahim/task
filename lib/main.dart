import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/constance.dart';
import 'package:task_app/core/utils/app_router.dart';
import 'package:task_app/features/home/data/repo/home_repo_implement.dart';
import 'package:task_app/features/home/presentation/controller/home_cubit/home_cubit.dart';

import 'core/utils/bloc_observe.dart';
import 'core/utils/cache_helper.dart';
import 'core/utils/service_locator.dart';
import 'features/home/presentation/controller/help_cubit/help_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();

  await CacheHelper.init();

  Bloc.observer = MyBlocObserver();

  id = CacheHelper.getData(key: 'id');


  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> HomeCubit(getIt.get<HomeRepoImplement>())..getProductData()),
        BlocProvider(create: (context)=> HelpCubit(getIt.get<HomeRepoImplement>())..getHelpData()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
      ),
    );
  }
}

