import 'package:disaster_relief_mgnt/utils/string.dart';
import 'package:flutter/material.dart';

class AdminSerachPage extends StatefulWidget {
  const AdminSerachPage({super.key});

  @override
  State<AdminSerachPage> createState() => _AdminSerachPageState();
}

class _AdminSerachPageState extends State<AdminSerachPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search ',
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
