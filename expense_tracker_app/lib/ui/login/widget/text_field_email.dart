import 'package:expense_tracker_app/ui/login/controller/login_controller.dart';
import 'package:expense_tracker_app/widget/text_field_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart' show Get;
import 'package:get/get_instance/get_instance.dart';

class TextFieldEmail extends StatelessWidget {
  const TextFieldEmail({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = Get.find<LoginController>();
    return Column(
      children: [
        TextFieldCustom(
          hintText: 'Enter your email',
          controller: loginController.emailController,
          keyboardType: TextInputType.emailAddress,
        ),
      ],
    );
  }
}
