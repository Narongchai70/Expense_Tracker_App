import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker_app/widget/snackbar_custom.dart';

class ForgotPasswordController extends GetxController {
  final emailController = TextEditingController();

  void resetPassword() async {
    final email = emailController.text.trim();

    if (email.isEmpty || !GetUtils.isEmail(email)) {
      SnackbarCustom.show(
        title: "Error",
        message: "Please enter a valid email.",
        isError: true,
      );
      return;
    }

    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      SnackbarCustom.show(
        title: "Success",
        message: "Reset link sent to your email.",
      );
    } catch (e) {
      SnackbarCustom.show(
        title: "Error",
        message: "Something went wrong. Please try again.",
        isError: true,
      );
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    super.onClose();
  }
}
