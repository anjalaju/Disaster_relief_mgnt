import 'package:disaster_relief_mgnt/utils/button.dart';
import 'package:disaster_relief_mgnt/utils/colors.dart';
import 'package:flutter/material.dart';

class UserSignupOtp extends StatefulWidget {
  const UserSignupOtp({super.key});

  @override
  State<UserSignupOtp> createState() => _LogaState();
}

class _LogaState extends State<UserSignupOtp> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.darkblue,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 60,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "If You Dont’t Recieve Code? ",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      "Resend ",
                      style: TextStyle(color: Appcolor.lighblue, fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Center(
                  child:ButtonCustom(text: 'Submit',color: Appcolor.lighblue,),
                ),
              ],
            ),
          ),
        ));
  }
}

