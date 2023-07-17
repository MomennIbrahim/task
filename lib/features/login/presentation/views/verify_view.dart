import 'package:flutter/material.dart';

import 'package:task_app/features/login/presentation/views/widgets/verify_view_body.dart';

class VerifyView extends StatelessWidget {
  const VerifyView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: VerifyViewBody(),
    );
  }
}
