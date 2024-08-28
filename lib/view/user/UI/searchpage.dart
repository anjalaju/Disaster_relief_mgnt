import 'package:disaster_relief_mgnt/utils/string.dart';
import 'package:flutter/material.dart';

class UserSerachPage extends StatefulWidget {
  const UserSerachPage({super.key});

  @override
  State<UserSerachPage> createState() => _UserSerachPageState();
}

class _UserSerachPageState extends State<UserSerachPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Search',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: Helper.h(context) * .010,
              ),
              TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: ("Search by location"),
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: const Icon(Icons.location_on)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
