import 'package:flutter/material.dart';

class ButtonGoogle extends StatelessWidget {
  const ButtonGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: BorderSide(color: Colors.black26),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icon/icon_google.png',
                    height: 26,
                    width: 26,
                  ),
                  SizedBox(width: 10),
                  Text(
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
