import 'dart:async';

import 'package:disaster_relief_mgnt/firebase_options.dart';
import 'package:disaster_relief_mgnt/view/intropage/splashscrn.dart';
import 'package:disaster_relief_mgnt/view/user/Forgetpage.dart';
import 'package:disaster_relief_mgnt/view/user/forgetotppage.dart';
import 'package:disaster_relief_mgnt/view/user/homepage.dart';
import 'package:disaster_relief_mgnt/view/user/number.dart';
import 'package:disaster_relief_mgnt/view/user/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Splash(),

      home: NumberPage(),
    );
  }
}
