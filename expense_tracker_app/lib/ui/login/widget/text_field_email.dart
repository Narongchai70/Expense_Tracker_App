import 'package:flutter/material.dart';

class TextFieldEmail extends StatelessWidget {
  const TextFieldEmail({super.key});

  @override
  Widget build(BuildContext context) {
    double searchheight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          children: [
            Text(
              'E-mail',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ],
        ),
        SizedBox(height: searchheight * 0.01),
        TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
            hintText: 'Enter you email',
            hintStyle: TextStyle(color: Colors.black38),
            labelStyle: TextStyle(color: Colors.black),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.black38),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
