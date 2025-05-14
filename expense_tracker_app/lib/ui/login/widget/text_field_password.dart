import 'package:expense_tracker_app/ui/login/password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldPassword extends StatelessWidget {
  final PasswordController passwordController;

  const TextFieldPassword({super.key, required this.passwordController});

  @override
  Widget build(BuildContext context) {
    double searchheight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        SizedBox(height: searchheight * 0.01),
        Obx(
          () => TextField(
            obscureText: passwordController.obscureText.value,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              hintText: 'Enter your password',
              hintStyle: TextStyle(color: Colors.black38),
              suffixIcon: IconButton(
                onPressed: passwordController.toggleObscure,
                icon: Icon(
                  passwordController.obscureText.value
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: Colors.black38,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.black38),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
