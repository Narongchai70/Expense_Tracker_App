import 'package:expense_tracker_app/ui/register/controller/password_controller.dart';
import 'package:expense_tracker_app/ui/register/controller/register_controller.dart';
import 'package:expense_tracker_app/widget/text_field_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldConfirmPassword extends StatelessWidget {
  TextFieldConfirmPassword({super.key});

  final passwordController = Get.find<PasswordController>();
  final registerController = Get.find<RegisterController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => TextFieldCustom(
            hintText: '*********',
            controller: registerController.confirmPasswordController,
            obscureText: passwordController.obscureConfirmPassword.value,
            suffixIcon: IconButton(
              onPressed: passwordController.toggleConfirmPassword,
              icon: Icon(
                passwordController.obscureConfirmPassword.value
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
