import 'package:expense_tracker_app/ui/forgot_password/contorller/forgot_password_controller.dart';

import 'package:get/get.dart';
import 'package:expense_tracker_app/ui/register/controller/password_controller.dart';
import 'package:expense_tracker_app/ui/register/controller/register_controller.dart';
import 'package:expense_tracker_app/ui/login/controller/login_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswordController>(
      () => ForgotPasswordController(),
      fenix: true,
    );
    Get.lazyPut<PasswordController>(() => PasswordController(), fenix: true);
    Get.lazyPut<RegisterController>(() => RegisterController(), fenix: true);
    Get.lazyPut<LoginController>(() => LoginController(), fenix: true);
  }
}
