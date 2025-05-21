import 'package:expense_tracker_app/widget/icon_button_logout.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(color: Colors.white)),
        centerTitle: true,

        backgroundColor: Colors.green,
        actions: [IconButtonLogout()],
      ),
      body: const Center(child: Text('Welcome!')),
    );
  }
}
