import 'package:disaster_relief_mgnt/utils/colors.dart';
import 'package:disaster_relief_mgnt/utils/string.dart';
import 'package:disaster_relief_mgnt/view/intropage/usertypee.dart';
import 'package:disaster_relief_mgnt/view/user/formscreen/splash.dart';
import 'package:flutter/material.dart';

class UserType extends StatelessWidget {
  const UserType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            // image: DecorationImage(
            //     image: AssetImage("images/firstintropage.jpg"),
            //     fit: BoxFit.fill)
            color: Appcolor.darkblue),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: Helper.h(context) * .020,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UserTypee(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Appcolor.lighblue,
                            borderRadius: BorderRadius.circular(30)),
                        alignment: Alignment.center,
                        width: Helper.W(context) * .500,
                        height: Helper.h(context) * .050,
                        child: const Text(
                          'Officials',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Helper.h(context) * .020,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const UserSplash(),
                            ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Appcolor.lighblue,
                            borderRadius: BorderRadius.circular(30)),
                        alignment: Alignment.center,
                        width: Helper.W(context) * .500,
                        height: Helper.h(context) * .050,
                        child: const Text(
                          'User',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
