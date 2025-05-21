import 'package:expense_tracker_app/widget/text_field_custom.dart';
import 'package:flutter/material.dart';

class TextFieldName extends StatelessWidget {
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;

  const TextFieldName({
    super.key,
    required this.firstNameController,
    required this.lastNameController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFieldCustom(
                hintText: 'First Name',
                controller: firstNameController,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: TextFieldCustom(
                hintText: 'Last Name',
                controller: lastNameController,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
