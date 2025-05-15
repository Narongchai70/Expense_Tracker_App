import 'package:expense_tracker_app/widget/text_field_custom.dart';
import 'package:flutter/material.dart';

class TextFieldEmail extends StatelessWidget {
  const TextFieldEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [TextFieldCustom(hintText: 'Enter your email')]),
      ],
    );
  }
}
