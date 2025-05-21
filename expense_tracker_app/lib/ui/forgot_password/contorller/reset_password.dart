import 'package:firebase_auth/firebase_auth.dart';
import 'package:expense_tracker_app/widget/snackbar_custom.dart';

Future<void> resetPassword(String email) async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email.trim());
    SnackbarCustom.show(
      title: "Success",
      message: "Password reset email has been sent.",
    );
  } on FirebaseAuthException catch (e) {
    SnackbarCustom.show(
      title: "Error",
      message: e.message ?? "Failed to send reset email.",
      isError: true,
    );
  }
}
