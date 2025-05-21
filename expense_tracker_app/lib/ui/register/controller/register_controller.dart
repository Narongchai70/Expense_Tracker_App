import 'package:expense_tracker_app/ui/home/home_page.dart';
import 'package:expense_tracker_app/widget/snackbar_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterController extends GetxController {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  Future<void> register() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    final confirmPassword = confirmPasswordController.text.trim();

    if (password != confirmPassword) {
      SnackbarCustom.show(
        title: "Error",
        message: "Passwords do not match",
        isError: true,
      );
      return;
    }

    if (password.length < 8) {
      SnackbarCustom.show(
        title: "Error",
        message: "Password must be at least 8 characters",
        isError: true,
      );
      return;
    }
    bool isEmailValid(String email) {
      final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
      return emailRegex.hasMatch(email);
    }

    if (!isEmailValid(email)) {
      SnackbarCustom.show(
        title: "Error",
        message: "Invalid email format",
        isError: true,
      );
      return;
    }
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      User? user = userCredential.user;

      if (user != null) {
        await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
          'firstName': firstNameController.text.trim(),
          'lastName': lastNameController.text.trim(),
          'email': email,
          'createdAt': FieldValue.serverTimestamp(),
        });

        SnackbarCustom.show(
          title: "Success",
          message: "Account created successfully",
        );
        Get.offAll(() => HomePage());
      }
    } on FirebaseAuthException catch (e) {
      SnackbarCustom.show(
        title: "Error",
        message: e.message ?? "Registration failed",
        isError: true,
      );
    }
  }

  @override
  void onClose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}
