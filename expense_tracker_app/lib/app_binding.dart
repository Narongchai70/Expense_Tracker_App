import 'package:get/get.dart';
import 'package:expense_tracker_app/ui/controller/password_controller/password_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<PasswordController>(PasswordController());
  }
}
