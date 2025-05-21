import 'package:expense_tracker_app/ui/register/controller/register_controller.dart';
import 'package:expense_tracker_app/widget/text_field_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldEmailRegister extends StatelessWidget {
  TextFieldEmailRegister({super.key});

  final registerController = Get.find<RegisterController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFieldCustom(
                hintText: 'Enter your email',
                controller: registerController.emailController,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
