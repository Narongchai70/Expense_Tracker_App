import 'package:expense_tracker_app/ui/login/login_page.dart';
import 'package:firebase_core/firebase_core.dart'; // Import Firebase
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'firebase_options.dart'; // Import the generated Firebase options file

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure that Flutter is initialized
  await Firebase.initializeApp(
    options:
        DefaultFirebaseOptions
            .currentPlatform, // Initialize Firebase with platform-specific options
  );
  runApp(const MyApp()); // Run the app after Firebase initialization
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: const LoginPage());
  }
}
