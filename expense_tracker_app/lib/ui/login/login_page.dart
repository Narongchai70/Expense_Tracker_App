import 'package:expense_tracker_app/ui/login/password_controller.dart';
import 'package:expense_tracker_app/ui/login/widget/button_google.dart';
import 'package:expense_tracker_app/ui/login/widget/button_login.dart';
import 'package:expense_tracker_app/ui/login/widget/text_button_forgot_password.dart';
import 'package:expense_tracker_app/ui/login/widget/text_buttun_sign_up.dart';
import 'package:expense_tracker_app/ui/login/widget/text_field_email.dart';
import 'package:expense_tracker_app/ui/login/widget/text_field_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final passwordController = Get.put(PasswordController());
  @override
  Widget build(BuildContext context) {
    double searchheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: searchheight * 0.04,
            child: Container(color: Colors.green),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  child: Column(
                    children: [
                      SizedBox(height: searchheight * 0.02),
                      Text(
                        'Welcom to',
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Cash Note',
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: searchheight * 0.03),
                      TextFieldEmail(),
                      SizedBox(height: searchheight * 0.03),
                      TextFieldPassword(passwordController: passwordController),
                      SizedBox(height: searchheight * 0.02),
                      TextButtonForgotPassword(),
                      SizedBox(height: searchheight * 0.17),
                      ButtonLogin(),
                      SizedBox(height: searchheight * 0.03),
                      TextButtunSignUp(),
                      SizedBox(height: searchheight * 0.1),
                      Text(
                        'or login with',
                        style: TextStyle(color: Colors.black54),
                      ),
                      SizedBox(height: searchheight * 0.025),
                      ButtonGoogle(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
