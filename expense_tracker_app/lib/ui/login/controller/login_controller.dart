import 'package:expense_tracker_app/widget/snackbar_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> login() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      SnackbarCustom.show(title: "Success", message: "Logged in successfully");

      Get.offAllNamed('/home');
    } on FirebaseAuthException {
      SnackbarCustom.show(
        title: "Login Failed",
        message: "Invalid email or password",
        isError: true,
      );
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
