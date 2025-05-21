import 'package:google_sign_in/google_sign_in.dart';

final GoogleSignIn _googleSignIn = GoogleSignIn();

Future<void> signInOut() async {
  await _googleSignIn.signOut();
}
