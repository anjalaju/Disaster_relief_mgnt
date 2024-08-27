import 'package:disaster_relief_mgnt/view/user/forgetotppage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseService {
  FirebaseAuth s = FirebaseAuth.instance;
  Future<User?> signupwithEmailandpassword(
      String email, String password) async {
    print(email);
    print(password);
    print('******************///////////////////********************');
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

  Future<User?> forgetpassword(email) async {
    try {
      await s.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

  Future<void> sendcode(context, phoneNumber) async {
    try {
      await s.verifyPhoneNumber(
          phoneNumber: '+91 $phoneNumber',
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
          codeAutoRetrievalTimeout: (vid) {});
    } on FirebaseAuthException catch (e) {
      print('Error Occured :${e.code}');
    } catch (e) {
      print('Error Occured "${e.toString()}');
    }
  }
}
