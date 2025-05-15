import 'package:expense_tracker_app/ui/forgot_password/forgot_password_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextButtonForgotPassword extends StatelessWidget {
  const TextButtonForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    double searchheight = MediaQuery.of(context).size.height;
    double searchwidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size(0, 0),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              onPressed: () {
                Get.to(ForgotPasswordPage());
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: searchheight * 0.0018,
              color: Colors.blue,
              width: searchwidth * 0.28,
            ),
          ],
        ),
      ],
    );
  }
}
