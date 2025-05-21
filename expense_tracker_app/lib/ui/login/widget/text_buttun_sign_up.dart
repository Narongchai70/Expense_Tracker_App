import 'package:expense_tracker_app/app_routes.dart';
import 'package:expense_tracker_app/ui/register/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TextButtunSignUp extends StatelessWidget {
  const TextButtunSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    double searchwidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Don’t have an account?',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 5),
        Column(
          children: [
            TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size(0, 0),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              onPressed: () {
                Get.toNamed('/register');
              },
              child: Text(
                'Sign up now',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 1.5,
              color: Colors.blue,
              width: searchwidth * 0.19,
            ),
          ],
        ),
      ],
    );
  }
}
