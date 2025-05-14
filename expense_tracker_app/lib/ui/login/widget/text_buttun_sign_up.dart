import 'package:flutter/material.dart';

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
              onPressed: () {},
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
