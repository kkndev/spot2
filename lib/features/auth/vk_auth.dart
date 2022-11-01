import 'package:flutter_login_vk/flutter_login_vk.dart';

// Create an instance of VKLogin

void vkAuth() async {
  final vk = VKLogin();

// Initialize
  await vk.initSdk();

// Log in
  final res = await vk.logIn(scope:[VKScope.email]);

// Check result
  if (res.isValue) {
// There is no error, but we don't know yet
// if user loggen in or not.
// You should check isCanceled
    final VKLoginResult? data = res.asValue?.value;

    if (res.isError) {
// User cancel log in
    } else {
// Logged in

// Send access token to server for validation and auth
      final VKAccessToken? accessToken = res.asValue?.value.accessToken;
      print('Access token: ${accessToken}');

// Get profile data
//       final profile = await fb.getUserProfile();
//       print('Hello, ${profile.firstName}! You ID: ${profile.userId}');

// Get email (since we request email permissions)
//       final email = await fb.getUserEmail();
//       print('And your email is $email');
    }
  } else {
// Log in failed
    final errorRes = res.asError;
    print('Error while log in: ${errorRes}');
  }
}
