import 'package:get/get.dart';
import 'package:expense_tracker_app/ui/home/home_page.dart';
import 'package:expense_tracker_app/ui/login/login_page.dart';
import 'package:expense_tracker_app/ui/register/register_page.dart';
import 'package:expense_tracker_app/ui/forgot_password/forgot_password_page.dart';
import 'package:expense_tracker_app/app_routes.dart';

final List<GetPage> appPages = [
  GetPage(name: AppRoutes.home, page: () => HomePage()),
  GetPage(name: AppRoutes.login, page: () => LoginPage()),
  GetPage(name: AppRoutes.register, page: () => RegisterPage()),
  GetPage(name: AppRoutes.forgotPassword, page: () => ForgotPasswordPage()),
];
