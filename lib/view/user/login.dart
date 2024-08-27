import 'package:disaster_relief_mgnt/firebase_services.dart';
import 'package:disaster_relief_mgnt/utils/button.dart';
import 'package:disaster_relief_mgnt/utils/colors.dart';
import 'package:disaster_relief_mgnt/view/user/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Userlogin extends StatefulWidget {
  const Userlogin({super.key});

  @override
  State<Userlogin> createState() => _LogaState();
}

class _LogaState extends State<Userlogin> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  FirebaseService obj1 = FirebaseService();
  Future signIn() async {
    String a = emailcontroller.text;
    String b = passwordcontroller.text;
    print(a);
    print(b);
    print('*************************');
    User? user = await obj1.signinWithEmailAndPassword(a, b);
    if (user != null) {
      print('User is successfully created');
    } else {
      print('Some error occurred');
    }
  }

  // String email = " ", password = "";
  // TextEditingController emailcontroller = TextEditingController();
  // TextEditingController passwordcontroller = TextEditingController();
  bool _obscureText = true;

  // final _formkey = GlobalKey<FormState>();
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Appcolor.darkblue,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Form(
              // key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 80),
                  const Center(
                    child: Text(
                      "Relief",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Text("Email"),
                  const SizedBox(height: 7),
                  TextFormField(
                    controller: emailcontroller,
                    // controller: emailcontroller,
                    // autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter an email address';
                      }
                      if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                          .hasMatch(value)) {
                        return 'Invalid email format';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: ("Enter Your Email"),
                        prefixIcon: const Icon(Icons.email)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Password"),
                  const SizedBox(height: 7),
                  TextFormField(
                      controller: passwordcontroller,
                      // controller: passwordcontroller,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (password) {
                        // Password length should be at least 8 characters
                        if (password!.length < 4) {
                          return 'Password must be at least 4 characters long.';
                        }

                        if (!password.contains(RegExp(r'[0-9]'))) {
                          return 'Password must contain at least one digit.';
                        }

                        // Password should contain at least one special character
                        // if (!password
                        //     .contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                        //   return 'Password must contain at least one special character.';
                        // }

                        // Password is valid
                        return null;
                      },
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: ("Enter Your Password"),
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: Icon(
                              _obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ))),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black)),
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => const Forgetpage(),
                            //     ));
                          },
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                                color: Color(0xff19A8B3),
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Center(
                    child: isloading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : ButtonCustom(onbuttonpressed: () {
                          signIn();
                        },
                            text: 'Login',
                            color: Appcolor.lighblue,
                          ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.black,
                        ),
                      ),
                      const Text(
                        " Or Login With ",
                        style: TextStyle(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Container(
                      //   height: 60,
                      //   width: 60,
                      //   // color: Colors.amber,
                      //   child: const Image(
                      //       image: AssetImage("images/facebook.png")),
                      // ),
                      // const SizedBox(
                      //   width: 30,
                      // ),
                      // Container(
                      //   height: 40,

                      //   width: 40,

                      //   // color: Colors.amber,
                      //   child:
                      //       const Image(image: AssetImage("images/google.png")),
                      // )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account? ",
                        style: TextStyle(color: Colors.white),
                      ),
                      InkWell(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: ((context) => const UserSignUp()))),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Appcolor.lighblue),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
