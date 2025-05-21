import 'package:expense_tracker_app/ui/login/login_page.dart';
import 'package:expense_tracker_app/ui/login_google/signIn_out.dart';
import 'package:expense_tracker_app/widget/snackbar_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IconButtonLogout extends StatelessWidget {
  const IconButtonLogout({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.logout, color: Colors.white),
      onPressed: () async {
        await signInOut();
        Get.offAll(() => LoginPage());
        SnackbarCustom.show(
          title: "Logout",
          message: "You have been logged out successfully",
        );
      },
    );
  }
}
