import 'package:expense_tracker_app/ui/register/controller/password_controller.dart';
import 'package:expense_tracker_app/ui/register/controller/register_controller.dart';
import 'package:expense_tracker_app/ui/register/widget/button_create_account.dart';
import 'package:expense_tracker_app/ui/register/widget/text_field_confirm_password.dart';
import 'package:expense_tracker_app/ui/register/widget/text_field_email_register.dart';
import 'package:expense_tracker_app/ui/register/widget/text_field_name.dart';
import 'package:expense_tracker_app/ui/register/widget/text_field_password_register.dart';
import 'package:expense_tracker_app/widget/extension%20.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final passwordController = Get.find<PasswordController>();
  final registerController = Get.find<RegisterController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Align(
                  child: Column(
                    children: [
                      SizedBox(height: context.screenHeight * 0.02),
                      Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: context.screenHeight * 0.06),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'First Name',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Text(
                              'Last Name',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: context.screenHeight * 0.01),
                      TextFieldName(
                        firstNameController:
                            registerController.firstNameController,
                        lastNameController:
                            registerController.lastNameController,
                      ),
                      SizedBox(height: context.screenHeight * 0.02),
                      Row(
                        children: [
                          Text(
                            'E-mail',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: context.screenHeight * 0.01),
                      TextFieldEmailRegister(),
                      SizedBox(height: context.screenHeight * 0.02),
                      Row(
                        children: [
                          Text(
                            'Password',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      TextFieldPasswordRegister(),
                      SizedBox(height: context.screenHeight * 0.01),
                      Row(
                        children: [
                          Text(
                            'must contain 8 char.',
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: context.screenHeight * 0.02),
                      Row(
                        children: [
                          Text(
                            'Confirm Password',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: context.screenHeight * 0.01),
                      TextFieldConfirmPassword(),
                      SizedBox(height: context.screenHeight * 0.18),
                      ButtonCreateAccount(),
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
