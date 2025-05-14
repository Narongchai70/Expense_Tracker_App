import 'package:expense_tracker_app/ui/home/home_page.dart';
import 'package:expense_tracker_app/ui/login_google/signIn_with_google';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonGoogle extends StatelessWidget {
  const ButtonGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                backgroundColor: Colors.white,
              ),
              onPressed: () async {
                final userCredential = await signInWithGoogle();
                if (userCredential != null) {
                  Get.to(HomePage());
                  Get.snackbar('Succeed', 'Sign in with Google successfully');
                } else {
                  Get.snackbar('Failed', 'Login failed');
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icon/icon_google.png',
                    height: 26,
                    width: 26,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Login with Google',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
