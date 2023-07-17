import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/core/utils/app_router.dart';
import 'package:task_app/core/utils/styles.dart';
import 'package:task_app/core/widgets/custom_error_widget.dart';
import 'package:task_app/core/widgets/custom_material_button.dart';
import 'package:task_app/features/home/presentation/controller/help_cubit/help_cubit.dart';
import 'package:task_app/features/login/presentation/views/widgets/custom_card.dart';
import 'package:task_app/features/login/presentation/views/widgets/custom_login_widget.dart';

import '../../../../../constance.dart';

class HelpViewBody extends StatelessWidget {
  const HelpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HelpCubit, HelpState>(
      builder: (context, state) {
        if (state is HelpSuccessState) {
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
            child: Column(
              children: [
                const SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Help',
                  style: Styles.textStyle30.copyWith(color: Colors.white),
                ),
                const SizedBox(
                  height: 65,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Card(
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 13.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Account',
                                style: Styles.textStyle16
                                    .copyWith(color: kPrimaryColor),
                              ),
                              const Spacer(),
                              const Icon(Icons.keyboard_arrow_up_sharp),
                            ],
                          ),
                          const SizedBox(
                            height: 23,
                          ),
                          const Text(
                            'You need to create an account to use the application but you can delete your account any time you want',
                            style: Styles.textStyle16,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 27.0,
                ),
                Expanded(
                    child: ListView.builder(
                  itemBuilder: (context, index) =>
                       CustomCard(text: state.helpModel.help![index].question!, textAnswer: state.helpModel.help![index].answer!,),
                  itemCount: 4,
                )),
                const SizedBox(
                  height: 25.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: CustomMaterialButton(
                      style: Styles.textStyle20,
                      text: 'Continue',
                      height: 48.0,
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.kHomeView);
                      }),
                ),
                const SizedBox(
                  height: 25.0,
                )
              ],
            ),
          );
        } else if (state is HelpFailureState) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return CustomLoginWidget();
        }
      },
    );
  }
}
