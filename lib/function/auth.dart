import 'package:applicationlogin/login/landingPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

FirebaseAuth _authOfFirebase = FirebaseAuth.instance;
GoogleSignIn _googleLoginIn = GoogleSignIn();

Future signMeIn() async {
  //Scaffold.of(context).showSnackBar(new SnackBar(content: Text('Sign In')));

  GoogleSignInAccount googleSignWithAccount = await _googleLoginIn.signIn();
  GoogleSignInAuthentication authenticateForSignIn =
      await googleSignWithAccount.authentication;

  AuthCredential credentialOfUser = GoogleAuthProvider.credential(
      accessToken: authenticateForSignIn.accessToken,
      idToken: authenticateForSignIn.idToken);
  UserCredential authCredentialResult =
      await _authOfFirebase.signInWithCredential(credentialOfUser);

  User mainUser = authCredentialResult.user;

  User currentMainUser = await _authOfFirebase.currentUser;
  assert(currentMainUser.uid == mainUser.uid);

  return mainUser;
}

void signOut() async {
  await _googleLoginIn.signOut();
}
