import 'package:disaster_relief_mgnt/utils/colors.dart';
import 'package:disaster_relief_mgnt/view/admin/viewall/admin_complaint.dart';
import 'package:disaster_relief_mgnt/view/admin/viewall/admin_news.dart';
import 'package:disaster_relief_mgnt/view/admin/viewall/admin_notificationpage.dart';
import 'package:disaster_relief_mgnt/view/admin/viewall/admin_review.dart';
import 'package:disaster_relief_mgnt/view/admin/viewall/admin_searchpage.dart';
import 'package:disaster_relief_mgnt/view/admin/viewall/adminhelpline.dart';
import 'package:disaster_relief_mgnt/view/admin/viewall/subadmin_details%20.dart';
import 'package:disaster_relief_mgnt/view/admin/viewall/user_details.dart';
import 'package:disaster_relief_mgnt/view/admin/viewall/viewall_donatelist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AdminHomepage extends StatefulWidget {
  const AdminHomepage({super.key});

  @override
  State<AdminHomepage> createState() => _AdminHomepageState();
}

class _AdminHomepageState extends State<AdminHomepage> {
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
                'DashBoard',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AdminHomepage(),
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
                  builder: (context) => const AdminHelpline(),
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
                'User details',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const UserDetails(),
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
                'Subadmin Details',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SubadminDetails(),
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
                'Notifications',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AdminNotification(),
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
                  builder: (context) => const AdminComplaint(),
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
                  builder: (context) => const AdminReviews(),
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
                        builder: (context) => const AdminSerachPage(),
                      ));
                },
                icon: const Icon(Icons.manage_search_sharp)),
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
                    builder: (context) => const AdminNews(),
                  ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        "News",
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
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AdminDonatedList(),
                  ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Donation",
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
