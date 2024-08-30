import 'package:disaster_relief_mgnt/utils/colors.dart';
import 'package:disaster_relief_mgnt/view/admin/formscreen/admin_welcome.dart';
import 'package:flutter/material.dart';

class AdminSplash extends StatefulWidget {
  const AdminSplash({super.key});

  @override
  State<AdminSplash> createState() => _AdminSplashState();
}

class _AdminSplashState extends State<AdminSplash> {
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
          builder: (context) => AdminWelcome(),
        ));
  }
}
