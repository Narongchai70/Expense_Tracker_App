import 'package:expense_tracker_app/ui/login/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = Get.find<LoginController>();

    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                loginController.login();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(43, 135, 97, 1),
                side: const BorderSide(color: Colors.black38, width: 2),
              ),
              child: Text(
                'Login',
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
