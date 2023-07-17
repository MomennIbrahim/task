import 'package:flutter/material.dart';
import 'package:task_app/features/login/presentation/views/widgets/custom_image_background.dart';
import 'package:task_app/features/login/presentation/views/widgets/custom_login_widget.dart';
import 'package:task_app/features/login/presentation/views/widgets/custom_row_icons_login.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: Alignment.center,
      children: [
        const CustomImageBackGround(),
        Stack(
          children: [
            const CustomRowIconsLogin(),
            CustomLoginWidget(),
          ],
        ),
      ],
    );
  }
}
