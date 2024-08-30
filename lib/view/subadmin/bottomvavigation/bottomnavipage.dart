import 'package:disaster_relief_mgnt/utils/colors.dart';
import 'package:disaster_relief_mgnt/view/subadmin/bottomvavigation/Sub_homepage.dart';
import 'package:disaster_relief_mgnt/view/subadmin/bottomvavigation/sub_account.dart';
import 'package:disaster_relief_mgnt/view/subadmin/bottomvavigation/sub_notification.dart';
import 'package:disaster_relief_mgnt/view/subadmin/bottomvavigation/sub_search.dart';
import 'package:flutter/material.dart';

class UserBottomnaviPage extends StatefulWidget {
  int indexnum = 0;

  UserBottomnaviPage({super.key, required this.indexnum});

  @override
  State<UserBottomnaviPage> createState() => _UserBottomnaviPageState();
}

class _UserBottomnaviPageState extends State<UserBottomnaviPage> {
  final _pages = [
    const SubHomepage(),
    const SubSerachPage(),
    const SubNotification(),
    const SubAccountpage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[widget.indexnum],
      bottomNavigationBar: myNav(
        index: widget.indexnum,
        onTap: (index) {
          setState(() {
            widget.indexnum = index;
          });
        },
      ),
    );
  }
}

Widget myNav({
  int? index,
  void Function(int)? onTap,
  selectedcolor,
}) {
  return BottomNavigationBar(
    showUnselectedLabels: true,
    currentIndex: index!,
    selectedItemColor: Appcolor.lighblue,
    unselectedItemColor: Colors.black,
    showSelectedLabels: true,
    onTap: onTap,
    items: const [
      BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Color(0xffB7B7B7)),
      BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
          backgroundColor: Color(0xffB7B7B7)),
      BottomNavigationBarItem(
        icon: Icon(Icons.notifications_active),
        label: 'Notification',
        backgroundColor: Color(0xffB7B7B7),
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.account_box),
          label: 'Account',
          backgroundColor: Color(0xffB7B7B7)),
    ],
  );
}
