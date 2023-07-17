import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/core/utils/app_router.dart';
import 'package:task_app/core/utils/cache_helper.dart';
import 'package:task_app/core/utils/service_locator.dart';
import 'package:task_app/features/login/data/repo/login_repo_implementation.dart';
import 'package:task_app/features/login/presentation/controller/login_cubit.dart';
import 'package:task_app/features/login/presentation/controller/verify_cubit/verify_cubit.dart';
import '../../../../../constance.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_material_button.dart';
import 'custom_textfield_verify.dart';

class VerifyViewBody extends StatelessWidget {
  VerifyViewBody({super.key});

  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();
  final controller4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerifyCubit(getIt.get<LoginRepoImplementation>()),
      child: BlocBuilder<VerifyCubit, VerifyState>(
        builder: (context, state) {
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 62.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 66.0),
                    child: Text(
                      'Verify Phone',
                      style: Styles.textStyle30.copyWith(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 90.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTextFormFieldVerify(controller: controller1),
                        CustomTextFormFieldVerify(controller: controller2),
                        CustomTextFormFieldVerify(
                          controller: controller3,
                        ),
                        CustomTextFormFieldVerify(
                          controller: controller4,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'code is: 6 5 2 3',
                    style: Styles.textStyle20.copyWith(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 90.0,
                  ),
                  Text(
                    'Resend Code',
                    style: Styles.textStyle20.copyWith(color: kPrimaryColor),
                  ),
                  const SizedBox(
                    height: 78.0,
                  ),
                  CustomMaterialButton(
                    onPressed: () {
                      BlocProvider.of<VerifyCubit>(context).postUserData(
                          code: ('6523'));
                      if(state is VerifySuccess)
                        {
                          if(state.userData.status == 200)
                            {
                              CacheHelper.saveData(key: 'id', value: 556).then((value){
                                id = 556;
                              });
                              GoRouter.of(context).push(AppRouter.kHelpView);
                            }
                        }
                    },
                    style: Styles.textStyle20,
                    text: 'Verify',
                    height: 57.0,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
