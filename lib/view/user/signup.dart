import 'package:disaster_relief_mgnt/firebase_services.dart';
import 'package:disaster_relief_mgnt/utils/button.dart';
import 'package:disaster_relief_mgnt/utils/colors.dart';
import 'package:disaster_relief_mgnt/view/user/UI/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserSignUp extends StatefulWidget {
  const UserSignUp({super.key});

  @override
  State<UserSignUp> createState() => _LogaState();
}

class _LogaState extends State<UserSignUp> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final usernamecontroller = TextEditingController();
  final mobilecontroller = TextEditingController();
  final confirmcontroller = TextEditingController();
  FirebaseService obj=FirebaseService();
  
  Future   signup()async{

    String email=emailcontroller.text;
    String password=passwordcontroller.text;
    print(email);
    print(password);
    print('*************************');
   User? user=await obj.signupwithEmailandpassword(email, password);
     if (user != null) {
      print('User is successfully created');
  
    } else {
      print('Some error occurred');
    }
  }


  bool isloading = false;
  bool _obscureText1 = true;
  bool _obscureText2 = true;
  // final _formkey = GlobalKey<FormState>();
  // Future addfirebase(Map<String, dynamic> logininfomap, String userid) async {
  //   return FirebaseFirestore.instance
  //       .collection('firebase')
  //       .doc(userid)
  //       .set(logininfomap);
  // }

//   Future<void> signInWithPhoneCredential(
//       BuildContext context, PhoneAuthCredential credential) async {
//     try {
//       final authResult =
//           await FirebaseAuth.instance.signInWithCredential(credential);
//       // Check if the user is signed in
//       if (authResult.user != null) {
// //User signed in successfully, navigate to the next screen
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) => successfull(),
//           ),
//         );
//       } else {
//         // Handle sign in failure
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Sign in failed'),
//           ),
//         );
//       }
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text('Error: $e'),
//         ),
//       );
//     }
//   }

//   final selectedcountrycode = '+91';
//   Future<void> initiatePhoneVerification(BuildContext context) async {
//     try {
//       await FirebaseAuth.instance.verifyPhoneNumber(
//         phoneNumber: '$selectedcountrycode${mobilecontroller.text}',
//         verificationCompleted: (PhoneAuthCredential credential) {
//           signInWithPhoneCredential(context, credential);
//         },
//         verificationFailed: (FirebaseAuthException e) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//               content: Text('Verification failed: ${e.message}'),
//             ),
//           );
//         },
//         codeSent: (String verificationId, int? resendToken) {
//           // Navigate to OTP screen after code is sent

//           Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => signupotp(
//                   username: usernamecontroller.text,
//                   email: emailcontroller.text,
//                     verificationid: verificationId,
//                     mobilenumber:
//                         '$selectedcountrycode${mobilecontroller.text}')),
//           );
//         },
//         timeout: Duration(seconds: 60),
//         codeAutoRetrievalTimeout: (String verificationId) {
//           // Handle timeout
//         },
//       );
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text('Error: $e'),
//         ),
//       );
//     }
//   }

//   String? _password;
//   String? _confirmPassword;
//   final _auth = FirebaseAuth.instance;

 

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
                  const SizedBox(height: 60),
                  const Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text("User Name"),
                  const SizedBox(height: 7),
                  TextFormField(
                    controller: usernamecontroller,
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a name';
                      }
                      if (value.length < 3) {
                        return 'Name must be at least 3 characters long';
                      }
                      if (value.length > 20) {
                        return 'Name can be at most 20 characters long';
                      }
                      if (RegExp(r'[!@#\$%^&*(),.?":{}|<>]').hasMatch(value)) {
                        return 'Name cannot contain special characters';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: ("Enter Your Name"),
                        prefixIcon: const Icon(Icons.person)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Mobile Number"),
                  const SizedBox(height: 7),
                  TextFormField(
                    controller: mobilecontroller,
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a phone number';
                      }
                      if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                        return 'Invalid phone number format';
                      }

                      return null;
                    },
                    onChanged: (value) {
                      if (value.length == 10) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    inputFormatters: [LengthLimitingTextInputFormatter(10)],
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: ("Enter Your Number"),
                      prefixIcon: const Icon(Icons.call),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Email"),
                  const SizedBox(height: 7),
                  TextFormField(
                    controller: emailcontroller,
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
                    // obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: ("Enter Your Email"),
                      prefixIcon: const Icon(Icons.email),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Password"),
                  const SizedBox(height: 7),
                  TextFormField(
                    controller: passwordcontroller,
                    obscureText: _obscureText1,
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
                            _obscureText1 = !_obscureText1;
                          });
                        },
                        child: Icon(
                          _obscureText1
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                    // validator: (password) {
                    //   if (password == null || password.isEmpty) {
                    //     return 'Please enter your password';
                    //   }

                    //   // Password length should be at least 4 characters
                    //   if (password.length < 4) {
                    //     return 'Password must be at least 4 characters long.';
                    //   }

                    //   // Password should contain at least one digit
                    //   if (!password.contains(RegExp(r'[0-9]'))) {
                    //     return 'Password must contain at least one digit.';
                    //   }

                    //   _password = password; // Save the password
                    //   return null;
                    // },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Confirm Password"),
                  const SizedBox(height: 7),
                  TextFormField(
                      controller: confirmcontroller,
                      // validator: (password) {
                      //   if (password == null || password.isEmpty) {
                      //     return 'Please re-enter your password';
                      //   }

                      //   // Password length should be at least 4 characters
                      //   if (password.length < 4) {
                      //     return 'Password must be at least 4 characters long.';
                      //   }

                      //   // Password should contain at least one digit
                      //   if (!password.contains(RegExp(r'[0-9]'))) {
                      //     return 'Password must contain at least one digit.';
                      //   }

                      //   if (password != _password) {
                      //     return 'Passwords do not match';
                      //   }

                      //   _confirmPassword =
                      //       password; // Save the confirmed password
                      //   return null;
                      // },
                      // obscureText: _obscureText2,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: ("Confirm Password"),
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureText2 = !_obscureText2;
                            });
                          },
                          child: Icon(
                            _obscureText2
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: isloading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : ButtonCustom(onbuttonpressed: () {
                          signup();
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>UserHomePage()));
                        },
                            text: 'Register',
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
