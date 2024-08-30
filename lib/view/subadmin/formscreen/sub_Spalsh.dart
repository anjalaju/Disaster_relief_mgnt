import 'package:disaster_relief_mgnt/utils/colors.dart';
import 'package:disaster_relief_mgnt/view/subadmin/formscreen/sub_welcome.dart';
import 'package:flutter/material.dart';

class SubSplash extends StatefulWidget {
  const SubSplash({super.key});

  @override
  State<SubSplash> createState() => _SubSplashState();
}

class _SubSplashState extends State<SubSplash> {
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
          builder: (context) => SubWelcome(),
        ));
  }
}
