import 'package:disaster_relief_mgnt/view/user/bottomnavigation/homepage.dart';
import 'package:disaster_relief_mgnt/view/user/formscreen/forgetotppage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseService {
  FirebaseAuth s = FirebaseAuth.instance;

  // signup
  Future<User?> signupwithEmailandpassword(
      String email, String password) async {
    print(email);
    print(password);
    print('******************//////////////////*******/********************');
    try {
      UserCredential credential = await s.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already exist") {
        print("the email already in use");
      } else {
        print("an error:${e.code}");
      }
    }
    return null;
  }

//  sighn in
  Future<User?> signinWithEmailAndPassword(
      String email, String password) async {
    print(email);
    print(password);
    print('******************///////////////////********************');
    try {
      UserCredential credential =
          await s.signInWithEmailAndPassword(email: email, password: password);

      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found" || e.code == 'wrong-password') {
        print("invalid email and password");
      } else {
        print("an error occured:${e.code}");
      }
    }
    return null;
  }

  // forget

  Future<User?> forgetpassword(email) async {
    try {
      await s.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

  ////phone Verification

  Future<void> sendcode(context, phoneNumber) async {
    try {
      await s.verifyPhoneNumber(
          phoneNumber: '+91 ${phoneNumber}',
          verificationCompleted: (PhoneAuthCredential credential) {},
          verificationFailed: (FirebaseException e) {
            print('An error occured: ${e.code}');
          },
          codeSent: (String vid, int? token) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => Forgetotppage(vid: vid))));
          },
          codeAutoRetrievalTimeout: (String vid) {});
    } on FirebaseAuthException catch (e) {
      print('Error Occured :${e.code}');
    } catch (e) {
      print('Error Occured "${e.toString()}');
    }
  }

  /////// gooogle sighn in/////
  Future signIneithGoogle(BuildContext context) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
            idToken: googleSignInAuthentication.idToken,
            accessToken: googleSignInAuthentication.accessToken);
        await s.signInWithCredential(credential);
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => UserHomePage()));
      }
    } catch (e) {
      print("Some error occured $e");
    }
  }
}
