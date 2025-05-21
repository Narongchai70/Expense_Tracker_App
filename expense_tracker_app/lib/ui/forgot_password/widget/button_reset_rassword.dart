import 'package:expense_tracker_app/ui/forgot_password/contorller/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonResetPassword extends StatelessWidget {
  const ButtonResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ForgotPasswordController>();

    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: ElevatedButton(
              onPressed: controller.resetPassword,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(43, 135, 97, 1),
                side: const BorderSide(color: Colors.black38, width: 2),
              ),
              child: const Text(
                'Send Reset Link',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
