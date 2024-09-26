import 'dart:async';
import 'package:disaster_relief_mgnt/Bussines_logic/firebase_options.dart';
import 'package:disaster_relief_mgnt/demmo1.dart';
import 'package:disaster_relief_mgnt/demmo2.dart';
import 'package:disaster_relief_mgnt/demo.dart';
import 'package:disaster_relief_mgnt/new.dart';
import 'package:disaster_relief_mgnt/view/intropage/splashscrn.dart';
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
      // home: Demoo(),
      // home: Ddemmo(),
      // home: Ssss(),
      home: NewPrggg(),
    );
  }
}
