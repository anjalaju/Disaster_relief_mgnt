import 'package:disaster_relief_mgnt/utils/button.dart';
import 'package:disaster_relief_mgnt/utils/colors.dart';
import 'package:disaster_relief_mgnt/view/user/UI/homepage.dart';
import 'package:disaster_relief_mgnt/view/user/otpsuccessfull.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Forgetotppage extends StatefulWidget {
  final String vid;
  const Forgetotppage({super.key,required this.vid});

  @override
  State<Forgetotppage> createState() => _LogaState();
}

class _LogaState extends State<Forgetotppage> {


  var code = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(129, 146, 204, 1),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 100),
                const Center(
                  child: Text(
                    "Send OTP",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Verification code",
                      style: TextStyle(color: Colors.white, fontSize: 36),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                    child: Text(
                  "Send to +917994413795",
                  style: TextStyle(color: Colors.white),
                )),
                const SizedBox(
                  height: 100,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: [
                //     SizedBox(
                //       width: 60,
                //       child: TextField(
                //         obscureText: true,
                //         decoration: InputDecoration(
                //           fillColor: Colors.white,
                //           filled: true,
                //           border: OutlineInputBorder(
                //             borderRadius: BorderRadius.circular(10),
                //           ),
                //         ),
                //       ),
                //     ),
                //     SizedBox(
                //       width: 60,
                //       child: TextField(
                //         obscureText: true,
                //         decoration: InputDecoration(
                //           fillColor: Colors.white,
                //           filled: true,
                //           border: OutlineInputBorder(
                //             borderRadius: BorderRadius.circular(10),
                //           ),
                //         ),
                //       ),
                //     ),
                //     SizedBox(
                //       width: 60,
                //       child: TextField(
                //         obscureText: true,
                //         decoration: InputDecoration(
                //           fillColor: Colors.white,
                //           filled: true,
                //           border: OutlineInputBorder(
                //             borderRadius: BorderRadius.circular(10),
                //           ),
                //         ),
                //       ),
                //     ),
                //     SizedBox(
                //       width: 60,
                //       child: TextField(
                //         obscureText: true,
                //         decoration: InputDecoration(
                //           fillColor: Colors.white,
                //           filled: true,
                //           border: OutlineInputBorder(
                //             borderRadius: BorderRadius.circular(10),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // Row(children: [
                //   Child
                // ],)
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Pinput(
                      length: 6,
                      onChanged: (value) {
                        setState(() {
                          code = value;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "If You Dont’t Recieve Code? ",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      "Resend ",
                      style: TextStyle(color: Colors.pink, fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Center(
                  child: ButtonCustom(onbuttonpressed: () => const SignupSuccessfull(),
                    text: 'Submit',
                    color: Appcolor.lighblue,
                  ),
                ),
              ],
            ),
          ),
        )
        );
  }


// signIn() async {
//     PhoneAuthCredential credential =
//         PhoneAuthProvider.credential(verificationId: widget.vid, smsCode: code);
//     try {
//       await FirebaseAuth.instance.signInWithCredential(credential).then(
//           (value) => Navigator.of(context).push(
//               MaterialPageRoute(builder: (context) => const UserHomepage()
//               )
//               )
//               );
//     } on FirebaseAuthException catch (e) {
//       print('Error Occured: ${e.code}');
//     } catch (e) {
//       print('Error Occured : ${e.toString()}');
//     }

  
// }
}