import 'package:flutter/material.dart';

class UserNotification extends StatefulWidget {
  const UserNotification({super.key});

  @override
  State<UserNotification> createState() => _UserNotificationState();
}

class _UserNotificationState extends State<UserNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Notifications',
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
      ),
      body: Column(
        children: [],
      ),
    );
  }
}