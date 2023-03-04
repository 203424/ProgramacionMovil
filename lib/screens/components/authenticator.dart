import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authenticator{
  static Future<User?> signIn({required BuildContext context}) async {
    FirebaseAuth authenticator = FirebaseAuth.instance;
    User? user;

    GoogleSignIn objGSignIn = GoogleSignIn();
    GoogleSignInAccount? objGSIAccount = await objGSignIn.signIn();

    if(objGSIAccount != null){
      GoogleSignInAuthentication objGSIAuthentication = await objGSIAccount.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: objGSIAuthentication.accessToken,
        idToken: objGSIAuthentication.idToken
      );

      try {
        UserCredential userCredential = await authenticator.signInWithCredential(credential);
        user = userCredential.user;

        return user;
      } on FirebaseAuthException catch (e) {
          print("Error en la autenticacion");
      }
    }
    return null;
  }
}