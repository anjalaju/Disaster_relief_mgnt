import 'package:disaster_relief_mgnt/utils/colors.dart';
import 'package:disaster_relief_mgnt/view/user/UI/Notificationpage.dart';
import 'package:disaster_relief_mgnt/view/user/drawer/Review.dart';
import 'package:disaster_relief_mgnt/view/user/drawer/about.dart';
import 'package:disaster_relief_mgnt/view/user/drawer/complaint.dart';
import 'package:disaster_relief_mgnt/view/user/drawer/settings.dart';
import 'package:disaster_relief_mgnt/view/user/view_all/Viewall_homepage.dart';
import 'package:disaster_relief_mgnt/view/user/view_all/helpline.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserHomePage extends StatefulWidget {
  const UserHomePage({super.key});

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Appcolor.darkblue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(
              height: 40,
            ),
            Center(
              child: InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Container(
                  height: 130,
                  width: 150,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 91,
                        child: CircleAvatar(
                          radius: 87,
                          // backgroundImage: AssetImage('images/propic.png'),
                        ),
                      ),
                      Positioned(
                        right: 5,
                        bottom: 15,
                        child: InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            // _showImagePickerBottomSheet(
                            //     context);
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Icon(
                                Icons
                                    .camera_alt, // You can use any icon you like
                                size: 24, // Adjust the size of the icon
                                color: Colors
                                    .white, // Adjust the color of the icon
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ListTile(
              leading: const Icon(
                Icons.festival,
                color: Colors.black,
                size: 20,
              ),
              title: const Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const UserHomePage(),
                ));
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.black,
                size: 20,
              ),
              title: const Text(
                'Helpline',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const UserHelpline(),
                ));
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.favorite,
                color: Colors.black,
                size: 20,
              ),
              title: const Text(
                'Settings',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Settingpage(),
                ));
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.menu_book_outlined,
                color: Colors.black,
                size: 20,
              ),
              title: const Text(
                'About us',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Aboutus(),
                ));
              },
            ),
            
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.edit_calendar,
                color: Colors.black,
                size: 20,
              ),
              title: const Text(
                'Complaints',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Complaint(),
                ));
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.edit_calendar,
                color: Colors.black,
                size: 20,
              ),
              title: const Text(
                'Reviews',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Reviews(),
                ));
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: Colors.black,
                size: 20,
              ),
              title: const Text(
                'Logout',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
                  onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => const Reviews(),
                // ));
              },
            ),
            const Divider(),
          ],
        ),
      ),
      appBar: AppBar(
          title: Text(
            'Home',
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
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UserNotification(),
                      ));
                },
                icon: const Icon(Icons.notifications)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Settingpage(),
                      ));
                },
                icon: const Icon(Icons.settings)),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Appcolor.darkblue,
              child: const Center(
                  // child: Image(
                  //   image: AssetImage(
                  //     "images/logo.png",
                  //   ),
                  //   fit: BoxFit.cover,
                  // ),
                  ),
            ),
            const SizedBox(
              height: 70,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffD9D9D9),
                  borderRadius: BorderRadius.circular(20)),
              height: 111,
              width: 361,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const UserViewall(),
                  ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        "User",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 111,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          // color: Colors.red
                        ),
                        // child: const Image(
                        //   image: AssetImage(
                        //     "images/Mainevent.jpg",
                        //   ),
                        //   fit: BoxFit.fill,
                        // ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffD9D9D9),
                  borderRadius: BorderRadius.circular(20)),
              height: 111,
              width: 361,
              child: InkWell(
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (context) => const Charityhomepage(),
                  // ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Volunteer",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 111,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          // color: Colors.red
                        ),
                        // child: const Image(
                        //   image: AssetImage(
                        //     "images/Charity.jpeg",
                        //   ),
                        //   fit: BoxFit.fill,
                        // ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
