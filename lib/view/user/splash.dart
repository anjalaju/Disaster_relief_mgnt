import 'package:disaster_relief_mgnt/utils/colors.dart';
import 'package:disaster_relief_mgnt/view/user/login.dart';
import 'package:disaster_relief_mgnt/view/user/welcomepage.dart';
import 'package:flutter/material.dart';

class UserSplash extends StatefulWidget {
  const UserSplash({super.key});

  @override
  State<UserSplash> createState() => _UserSplashState();
}

class _UserSplashState extends State<UserSplash> {
  @override
  void initState() {
    gotoMain();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Appcolor.lighblue,
         // child: Center(
        //   child: Image.asset('images/logo.png'),
        // // ),
      ),
    );
  }

  Future<void> gotoMain() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => UserWelcome(),
        ));
  }
}
