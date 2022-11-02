import 'package:google_sign_in/google_sign_in.dart';

authGoogle() async {
  GoogleSignIn googleSignIn = GoogleSignIn(
    scopes: <String>[
      'email',
    ],
  );
  try {
    var result = await googleSignIn.signIn();
    print(result?.authentication);
    print(result?.email);
  } catch (error) {
    print(error);
  }
}
