import 'package:disaster_relief_mgnt/utils/colors.dart';
import 'package:disaster_relief_mgnt/view/admin/formscreen/admin_login.dart';
import 'package:flutter/material.dart';

class AdminWelcome extends StatefulWidget {
  const AdminWelcome({super.key});

  @override
  State<AdminWelcome> createState() => _LogaState();
}

class _LogaState extends State<AdminWelcome> {
  @override
  Widget build(BuildContext context) {
    // return WillPopScope(
    // onWillPop: () async {
    //   // Close the app when back button is pressed
    //   return Future.value(false);
    // },
    return Scaffold(
        backgroundColor: Appcolor.darkblue,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(
                height: 120,
              ),
              Container(
                height: 370,
                width: 370,
                // color: Colors.red,

                // child: const Image(
                //   image: AssetImage(
                //     "images/logo.png",
                //   ),
                //   // fit: BoxFit.cover,
                // ),
              ),
              const SizedBox(
                height: 100,
              ),
              Center(
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadiusDirectional.circular(20))),
                        minimumSize:
                            WidgetStateProperty.all(const Size(280, 50)),
                        foregroundColor: WidgetStateProperty.all(Colors.black),
                        backgroundColor:
                            WidgetStateProperty.all(Appcolor.lighblue)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const AdminLogin()));
                    },
                    child: const Text(
                      "WELCOME",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                          color: Colors.white),
                    )),
              ),
            ]),
          ),
        ));
  }

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Are you sure?'),
            content: const Text('Do you want to exit the app?'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }
}
