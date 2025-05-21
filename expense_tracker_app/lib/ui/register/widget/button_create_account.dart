import 'package:expense_tracker_app/ui/register/controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonCreateAccount extends StatelessWidget {
  const ButtonCreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final registerController = Get.find<RegisterController>();
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    registerController.register();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(43, 135, 97, 1),
                    side: const BorderSide(color: Colors.black38, width: 2),
                  ),
                  child: Text(
                    'Create Account',
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
        ),
      ],
    );
  }
}
