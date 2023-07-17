import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/core/utils/app_router.dart';
import 'package:task_app/core/utils/service_locator.dart';
import 'package:task_app/features/login/data/repo/login_repo_implementation.dart';
import 'package:task_app/features/login/presentation/controller/login_cubit.dart';
import '../../../../../constance.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_textForm_field.dart';

class CustomLoginWidget extends StatelessWidget {
  CustomLoginWidget({super.key});

  final nameController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(getIt.get<LoginRepoImplementation>()),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccessState) {

            if (state.userModel.statusCode == 200) {
              var snackBar = SnackBar(content: Text(state.userModel.message!),backgroundColor: Colors.green,);
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              GoRouter.of(context).push(AppRouter.kVerifyView);
            }else{
              var snackBar = SnackBar(content: Text(state.userModel.message!),backgroundColor: Colors.red,);
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          }else if(state is LoginFailureState){
            var snackBar = SnackBar(content: Text(state.errMessage),backgroundColor: Colors.red,);
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 29, vertical: 170),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.06),
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: const Offset(1, 3),
                      )
                    ]),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        'Welcome',
                        style: Styles.textStyle30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70.0),
                      child: Container(
                        height: 3.131,
                        width: 143.0,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    CustomTextFormField(
                      keyboardType: TextInputType.text,
                        style: Styles.textStyle10,
                        labelText: 'Enter your Full Name',
                        controller: nameController),
                    const SizedBox(
                      height: 16.95,
                    ),
                    CustomTextFormField(
                        keyboardType: TextInputType.number,
                        labelText: 'Enter your Phone Number',
                        style: Styles.textStyle10,
                        controller: phoneController),
                    const SizedBox(
                      height: 31.99,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 44.5),
                      child: Container(
                          height: MediaQuery.of(context).size.height / 15,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              gradient: LinearGradient(colors: [
                                Colors.blue.withOpacity(1),
                                Colors.blue.withOpacity(0.8),
                                Colors.blue.withOpacity(0.5),
                              ])),
                          child: MaterialButton(
                            onPressed: () {
                              BlocProvider.of<LoginCubit>(context).userLogin(
                                  name: nameController.text,
                                  phone: phoneController.text);
                            },
                            child: const Text(
                              'Login',
                              style: Styles.textStyle20,
                            ),
                          )),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
