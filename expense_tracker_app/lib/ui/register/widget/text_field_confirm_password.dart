import 'package:expense_tracker_app/ui/controller/password_controller/password_controller.dart';
import 'package:expense_tracker_app/widget/text_field_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldConfirmPassword extends StatelessWidget {
  TextFieldConfirmPassword({super.key});
  final passwordController = Get.find<PasswordController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => TextFieldCustom(
            hintText: '*********',
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
