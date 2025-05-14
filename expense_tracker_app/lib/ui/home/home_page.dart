import 'package:expense_tracker_app/ui/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:expense_tracker_app/ui/login_google/signIn_with_google.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await signOutGoogle();
              Get.offAll(() => LoginPage());
              Get.snackbar('Log Out', 'You have logged out.');
            },
          ),
        ],
      ),
      body: const Center(child: Text('Welcome!')),
    );
  }
}
