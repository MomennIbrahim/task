import 'package:flutter/material.dart';
import 'package:task_app/features/login/presentation/views/widgets/help_view_body.dart';

class HelpView extends StatelessWidget {
  const HelpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HelpViewBody(),
    );
  }
}
