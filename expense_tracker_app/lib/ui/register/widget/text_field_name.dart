import 'package:expense_tracker_app/widget/text_field_custom.dart';
import 'package:flutter/material.dart';

class TextFieldName extends StatelessWidget {
  const TextFieldName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: TextFieldCustom(hintText: 'First Name')),
            SizedBox(width: 20),
            Expanded(child: TextFieldCustom(hintText: 'Last Name')),
          ],
        ),
      ],
    );
  }
}
