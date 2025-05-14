import 'package:get/get.dart';

class PasswordController extends GetxController {
  RxBool obscureText = true.obs;

  void toggleObscure() {
    obscureText.value = !obscureText.value;
  }
}
