import 'package:disaster_relief_mgnt/utils/button.dart';
import 'package:disaster_relief_mgnt/utils/colors.dart';
import 'package:disaster_relief_mgnt/view/user/bottomnavigation/bottomnavi.dart';
import 'package:flutter/material.dart';

class loginNotification extends StatefulWidget {
  const loginNotification({super.key});

  @override
  State<loginNotification> createState() => _loginNotificationState();
}

class _loginNotificationState extends State<loginNotification> {
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
              const SizedBox(height: 70),
              const Center(
                  child: Text(
                "Allow notifications on the next screen for:",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              )),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 73,
                  width: 372,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("",
                          style: TextStyle(fontSize: 20)),
                      Text(".",
                          style: TextStyle(fontSize: 20))
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 235, 229, 213),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 73,
                  width: 372,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("",
                          style: TextStyle(fontSize: 20))
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 235, 229, 213),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 73,
                  width: 372,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Notifications of news and",
                          style: TextStyle(fontSize: 20)),
                      Text("updates in the app.",
                          style: TextStyle(fontSize: 20))
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 235, 229, 213),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              const SizedBox(height: 60),
              const Text(
                "You can change this option later in your Settings",
                style: TextStyle(fontSize: 23, color: Colors.black),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: ButtonCustom(
                  onbuttonpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserBottomnaviPage(indexnum: 0),
                        ));
                  },
                  text: 'Next',
                  color: Appcolor.lighblue,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(child: Text("privacy Policy"))
            ],
          ),
        ),
      ),
    );
  }
}
