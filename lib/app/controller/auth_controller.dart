import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_pertama/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  Future signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  print(googleUser?.email);

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance
  .signInWithCredential(credential)
  .then((value) => Get.offAllNamed(Routes.HOME));
  }
  Future logout()async{
    await FirebaseAuth.instance.signOut(); 
    Get.offAllNamed(Routes.LOGIN);
  }
}