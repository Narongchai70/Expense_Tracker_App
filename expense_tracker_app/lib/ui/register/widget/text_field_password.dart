import 'package:expense_tracker_app/ui/controller/password_controller/password_controller.dart';
import 'package:expense_tracker_app/widget/extension%20.dart';
import 'package:expense_tracker_app/widget/text_field_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldPassword extends StatelessWidget {
  TextFieldPassword({super.key});
  final passwordController = Get.find<PasswordController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Password', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(height: context.screenHeight * 0.01),
        Obx(
          () => TextFieldCustom(
            hintText: '*********',
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
