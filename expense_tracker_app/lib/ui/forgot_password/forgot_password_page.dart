import 'package:expense_tracker_app/ui/forgot_password/widget/button_reset_rassword.dart';
import 'package:expense_tracker_app/widget/extension%20.dart';
import 'package:expense_tracker_app/widget/text_field_custom.dart';
import 'package:expense_tracker_app/widget/snackbar_custom.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ForgotPasswordPage extends StatelessWidget {
  ForgotPasswordPage({super.key});

  final emailController = TextEditingController();

  Future<void> resetPassword(String email) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email.trim());
      SnackbarCustom.show(
        title: "Success",
        message: "Password reset email has been sent.",
      );
    } on FirebaseAuthException catch (e) {
      SnackbarCustom.show(
        title: "Error",
        message: e.message ?? "Failed to send reset email.",
        isError: true,
      );
    }
  }

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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Forgot Password',
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'No worries! Enter your email address below and we will send you a link to reset your password.',
                        style: TextStyle(color: Colors.black54),
                      ),
                      SizedBox(height: context.screenHeight * 0.04),
                      Text(
                        'Email',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: context.screenHeight * 0.01),
                      TextFieldCustom(
                        hintText: 'Enter your email',
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                      ),
                      SizedBox(height: context.screenHeight * 0.04),
                      ButtonResetPassword(),
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
