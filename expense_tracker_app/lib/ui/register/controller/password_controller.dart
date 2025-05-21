import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class PasswordController extends GetxController {
  var obscurePasswordLogin = true.obs;
  var obscurePassword = true.obs;
  var obscureConfirmPassword = true.obs;

  void togglePasswordLogin() {
    obscurePasswordLogin.value = !obscurePasswordLogin.value;
  }

  void togglePassword() {
    obscurePassword.value = !obscurePassword.value;
  }

  void toggleConfirmPassword() {
    obscureConfirmPassword.value = !obscureConfirmPassword.value;
  }
}
