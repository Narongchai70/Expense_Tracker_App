import 'package:expense_tracker_app/ui/register/controller/password_controller.dart';
import 'package:expense_tracker_app/ui/register/controller/register_controller.dart';
import 'package:expense_tracker_app/widget/extension%20.dart';
import 'package:expense_tracker_app/widget/text_field_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldPasswordRegister extends StatelessWidget {
  TextFieldPasswordRegister({super.key});

  final passwordController = Get.find<PasswordController>();
  final registerController = Get.find<RegisterController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: context.screenHeight * 0.01),
        Obx(
          () => TextFieldCustom(
            hintText: '*********',
            controller: registerController.passwordController,
            obscureText: passwordController.obscurePassword.value,
            suffixIcon: IconButton(
              onPressed: passwordController.togglePassword,
              icon: Icon(
                passwordController.obscurePassword.value
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
