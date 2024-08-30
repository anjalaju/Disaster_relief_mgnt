import 'package:disaster_relief_mgnt/utils/button.dart';
import 'package:disaster_relief_mgnt/utils/colors.dart';
import 'package:disaster_relief_mgnt/view/admin/viewall/Adminhomepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _LogaState();
}

class _LogaState extends State<AdminLogin> {
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
                  const SizedBox(
                    height: 80,
                  ),
                  Center(
                    child: isloading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : ButtonCustom(
                            onbuttonpressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AdminHomepage(),
                                  ));
                            },
                            text: 'Login',
                            color: Appcolor.lighblue,
                          ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
