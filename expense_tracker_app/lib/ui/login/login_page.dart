import 'package:expense_tracker_app/ui/register/controller/password_controller.dart';
import 'package:expense_tracker_app/ui/login/controller/login_controller.dart';
import 'package:expense_tracker_app/ui/login_google/button_google.dart';
import 'package:expense_tracker_app/ui/login/widget/button_login.dart';
import 'package:expense_tracker_app/ui/login/widget/text_button_forgot_password.dart';
import 'package:expense_tracker_app/ui/login/widget/text_buttun_sign_up.dart';
import 'package:expense_tracker_app/ui/login/widget/text_field_email.dart';
import 'package:expense_tracker_app/ui/login/widget/text_field_password.dart';
import 'package:expense_tracker_app/widget/extension%20.dart';
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
  final loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  child: Column(
                    children: [
                      SizedBox(height: context.screenHeight * 0.02),
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
                      SizedBox(height: context.screenHeight * 0.03),
                      Row(
                        children: [
                          Text(
                            'E-mail',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: context.screenHeight * 0.01),
                      TextFieldEmail(),
                      SizedBox(height: context.screenHeight * 0.03),
                      Row(
                        children: [
                          Text(
                            'Password',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: context.screenHeight * 0.01),
                      TextFieldPassword(),
                      SizedBox(height: context.screenHeight * 0.02),
                      TextButtonForgotPassword(),
                      SizedBox(height: context.screenHeight * 0.12),
                      ButtonLogin(),
                      SizedBox(height: context.screenHeight * 0.03),
                      TextButtunSignUp(),
                      SizedBox(height: context.screenHeight * 0.07),
                      Text(
                        'or login with',
                        style: TextStyle(color: Colors.black54),
                      ),
                      SizedBox(height: context.screenHeight * 0.03),
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
