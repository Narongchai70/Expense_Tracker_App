import 'package:expense_tracker_app/ui/register/controller/password_controller.dart';
import 'package:expense_tracker_app/ui/login/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widget/text_field_custom.dart';

class TextFieldPassword extends StatelessWidget {
  const TextFieldPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final passwordController = Get.find<PasswordController>();
    final loginController = Get.find<LoginController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => TextFieldCustom(
            hintText: 'Enter your password',
            controller: loginController.passwordController,
            obscureText: passwordController.obscurePasswordLogin.value,
            suffixIcon: IconButton(
              onPressed: passwordController.togglePasswordLogin,
              icon: Icon(
                passwordController.obscurePasswordLogin.value
                    ? Icons.visibility_off
                    : Icons.visibility,
                color: Colors.black38,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
