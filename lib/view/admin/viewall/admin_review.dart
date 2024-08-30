import 'package:disaster_relief_mgnt/utils/colors.dart';
import 'package:disaster_relief_mgnt/utils/string.dart';
import 'package:flutter/material.dart';

class AdminReviews extends StatefulWidget {
  const AdminReviews({super.key});

  @override
  State<AdminReviews> createState() => _AdminReviewsState();
}

class _AdminReviewsState extends State<AdminReviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reviews',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: Helper.h(context) * .010,
              ),
              
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 73,
                  width: 372,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Text("Name..", style: TextStyle(fontSize: 20)),
                      // Text("Discriptions"),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(1)),
                ),
              ),
              const SizedBox(height: 1),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 73,
                  width: 372,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Text("Name..", style: TextStyle(fontSize: 20)),
                      // Text("Discriptions"),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(1)),
                ),
              ),
              const SizedBox(height: 1),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 73,
                  width: 372,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Text("Name..", style: TextStyle(fontSize: 20)),
                      // Text("Discriptions"),
                    ],
                  ), 
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(1)),
                ),
              ),
              const SizedBox(height: 1),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 73,
                  width: 372,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Text("Name..", style: TextStyle(fontSize: 20)),
                      // Text("Discriptions"),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(1)),
                ),
              ),
              const SizedBox(height: 1),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 73,
                  width: 372,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Text("Name..", style: TextStyle(fontSize: 20)),
                      // Text("Discriptions"),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(1)),
                ),
              ),
              const SizedBox(height: 1),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 73,
                  width: 372,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Text("Name..", style: TextStyle(fontSize: 20)),
                      // Text("Discriptions"),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(1)),
                ),
              ),
              const SizedBox(height: 1),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 73,
                  width: 372,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Text("Name..", style: TextStyle(fontSize: 20)),
                      // Text("Discriptions"),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(1)),
                ),
              ),
              const SizedBox(height: 1),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 73,
                  width: 372,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Text("Name..", style: TextStyle(fontSize: 20)),
                      // Text("Discriptions"),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(1)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
