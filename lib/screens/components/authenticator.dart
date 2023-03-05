import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
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

  static Future<User?> facebookSignIn({required BuildContext context}) async{
    FirebaseAuth authenticator = FirebaseAuth.instance;
    User? user;

    FacebookLogin objFSignIn = FacebookLogin();
    FacebookLoginResult objFSIAccount = await objFSignIn.logIn(['email']);

    if(objFSIAccount != null){
      FacebookAccessToken accessToken = objFSIAccount.accessToken;
      AuthCredential credential = FacebookAuthProvider.credential(accessToken.token);

      try {
        UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
        user = userCredential.user;

        return user;
      } on FirebaseAuthException catch (e) {
          print("Error en la autenticacion");
      }
    }
    return null;
  }
}