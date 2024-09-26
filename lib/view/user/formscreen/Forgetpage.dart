import 'package:disaster_relief_mgnt/firebase/firebase_services.dart';
import 'package:disaster_relief_mgnt/utils/button.dart';
import 'package:disaster_relief_mgnt/utils/colors.dart';
import 'package:flutter/material.dart';

class UserForget extends StatefulWidget {
  const UserForget({super.key});

  @override
  State<UserForget> createState() => _UserForgetState();
}

class _UserForgetState extends State<UserForget> {
  FirebaseService ob=FirebaseService();
  final emailcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  String email = "";
  // Future<void> resetPassword() async {
  //   try {
  //     await FirebaseAuth.instance
  //         .sendPasswordResetEmail(email: emailcontroller.text);
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(content: Text('Password reset email has been sent')),
  //     );
  //     Navigator.pop(context);
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'user-not-found') {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         const SnackBar(content: Text('No user found for that email')),
  //       );
  //     } else {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(content: Text('Error: ${e.message}')),
  //       );
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Appcolor.darkblue,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 130),
                const Center(
                    child: Text(
                  "Forget Password?",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                  ),
                )),
                const SizedBox(height: 40),
                const Center(
                  child: Text(
                    "we’ll send a verification code",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 217, 217, 217)),
                  ),
                ),
                const Center(
                  child: Text(
                    " to this email or phone number",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 217, 217, 217)),
                  ),
                ),
                const SizedBox(height: 80),
                TextFormField(
                  controller: emailcontroller,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // hintText: ("Enter Your Email/phone no"),
                    hintText: ("Enter Your Email"),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Center(
                  child: ButtonCustom(onbuttonpressed: () {
                    ob.forgetpassword(emailcontroller.text);
                  },
                    text: 'Send code',color: Appcolor.lighblue,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

