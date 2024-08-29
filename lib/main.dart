import 'dart:async';

import 'package:disaster_relief_mgnt/firebase_options.dart';
import 'package:disaster_relief_mgnt/view/user/UI/homepage.dart';
import 'package:disaster_relief_mgnt/view/user/login_notification.dart';
import 'package:disaster_relief_mgnt/view/user/signupotp.dart';
import 'package:disaster_relief_mgnt/view/user/welcomepage.dart';
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
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,

      // home: UserHomePage(),
      home: loginNotification(),
    );
  }
}
