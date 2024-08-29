import 'package:disaster_relief_mgnt/utils/colors.dart';
import 'package:disaster_relief_mgnt/view/user/view_all/View_all_complaint.dart';
import 'package:disaster_relief_mgnt/view/user/view_all/Viewall_newsupdate.dart';
import 'package:disaster_relief_mgnt/view/user/view_all/helpline.dart';
import 'package:disaster_relief_mgnt/view/user/view_all/news.dart';
import 'package:disaster_relief_mgnt/view/user/view_all/viewall_donate.dart';
import 'package:disaster_relief_mgnt/view/user/view_all/webinar.dart';
import 'package:flutter/material.dart';

class UserViewall extends StatefulWidget {
  const UserViewall({super.key});

  @override
  State<UserViewall> createState() => _UserViewallState();
}

class _UserViewallState extends State<UserViewall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Viewall',
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
        // actions: [
        //   IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
        //   IconButton(onPressed: () {}, icon: const Icon(Icons.chat_outlined))
        // ],
      ),
      backgroundColor:Appcolor.lighblue,
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "View All ",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Card(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: ListTile(
                          title: const Text(
                            "News ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          textColor: const Color.fromARGB(255, 0, 0, 0),
                          leading: const Icon(Icons.library_books_outlined),
                          iconColor: const Color.fromRGBO(0, 0, 0, 1),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const UserNews()));
                          },
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: ListTile(
                          title: const Text(
                            "HelpLine ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          textColor: const Color.fromARGB(255, 0, 0, 0),
                          leading: const Icon(Icons.library_books_outlined),
                          iconColor: const Color.fromRGBO(0, 0, 0, 1),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const UserHelpline()));
                          },
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: ListTile(
                          title: const Text(
                            "Webinar",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          textColor: const Color.fromARGB(255, 0, 0, 0),
                          leading: const Icon(Icons.library_books_outlined),
                          iconColor: const Color.fromRGBO(0, 0, 0, 1),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const UserWebinar()));
                          },
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: ListTile(
                          title: const Text(
                            "News update ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          textColor: const Color.fromARGB(255, 0, 0, 0),
                          leading: const Icon(Icons.library_books_outlined),
                          iconColor: const Color.fromRGBO(0, 0, 0, 1),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UserNewsupdate()));
                          },
                        ),
                      )
                    ],
                  ),
                ),


                const SizedBox(
                  height: 10,
                ),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: ListTile(
                          title: const Text(
                            "Complaints",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          textColor: const Color.fromARGB(255, 0, 0, 0),
                          leading: const Icon(Icons.library_books_outlined),
                          iconColor: const Color.fromRGBO(0, 0, 0, 1),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ViewallComplaint()));
                          },
                        ),
                      )
                    ],
                  ),
                ),
                 const SizedBox(
                  height: 10,
                ),
                Card(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: ListTile(
                          title: const Text(
                            "Donation",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          textColor: const Color.fromARGB(255, 0, 0, 0),
                          leading: const Icon(Icons.library_books_outlined),
                          iconColor: const Color.fromRGBO(0, 0, 0, 1),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ViewallDonate()));
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
