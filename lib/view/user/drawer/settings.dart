import 'package:disaster_relief_mgnt/utils/colors.dart';
import 'package:flutter/material.dart';

class UserSettingpage extends StatefulWidget {
  const UserSettingpage({super.key});

  @override
  State<UserSettingpage> createState() => _UserSettingpageState();
}

class _UserSettingpageState extends State<UserSettingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
        ),
        backgroundColor: Colors.transparent,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(
            thickness: 2,
            color: Colors.black,
            height: 1,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
          color: Colors.black,
        ),
      ),
      backgroundColor: Appcolor.lighblue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const ListTile(
          //   leading: Icon(
          //     Icons.language,
          //     size: 30,
          //   ),
          //   title: Text(
          //     "Language",
          //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          //   ),
          //   //  onTap: () {
          //   //     Navigator.push(
          //   //         context,
          //   //         MaterialPageRoute(
          //   //           builder: (context) => homepage(),
          //   //         ));

          //   //   },
          // ),

          // const ListTile(
          //   leading: Icon(
          //     Icons.dark_mode,
          //     size: 30,
          //   ),
          //   title: Text(
          //     "Dark mode",
          //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          //   ),
          //   //  onTap: () {
          //   //     Navigator.push(
          //   //         context,
          //   //         MaterialPageRoute(
          //   //           builder: (context) => homepage(),
          //   //         ));

          //   //   },
          // ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: ListTile(
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              tileColor: Appcolor.darkblue,
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(
                Icons.lock,
                size: 30,
              ),
              title: const Text(
                "Change password",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const Settingchangepass(),
                //     ));
              },
            ),
          ),
        
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: ListTile(
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              tileColor: Appcolor.darkblue,
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(
                Icons.person,
                size: 30,
              ),
              title: const Text(
                "Delete account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                        actionsAlignment: MainAxisAlignment.spaceEvenly,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        title: const Center(
                            child: Column(
                          children: [
                            Text(
                              "Are you sure?",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Do you want to delete the account?",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ],
                        )),
                        actions: <Widget>[
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                "Cancel",
                                style: TextStyle(color: Colors.indigo),
                              ),
                              style: TextButton.styleFrom(
                                  elevation: 5,
                                  minimumSize: const Size(128, 46),
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ))),
                          ElevatedButton(
                              onPressed: () async {
                                
                              },
                              child: const Text(
                                "Yes",
                                style: TextStyle(color: Colors.red),
                              ),
                              style: TextButton.styleFrom(
                                  elevation: 5,
                                  minimumSize: const Size(128, 46),
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ))),
                        ]);
                  },
                );
              },
            ),
          ),
        
        ],
      ),
    );
  }
}
