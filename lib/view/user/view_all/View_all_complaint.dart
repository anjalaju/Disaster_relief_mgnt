import 'package:disaster_relief_mgnt/utils/button.dart';
import 'package:disaster_relief_mgnt/utils/colors.dart';
import 'package:flutter/material.dart';

class ViewallComplaint extends StatefulWidget {
  const ViewallComplaint({super.key});

  @override
  State<ViewallComplaint> createState() => _ViewallComplaintState();
}

class _ViewallComplaintState extends State<ViewallComplaint> {
  final complaint = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Complaint',
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
          //   IconButton(
          //       onPressed: () {
          //         Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (context) => const Shortlist()));
          //       },
          //       icon: const Icon(Icons.favorite)),
          //   IconButton(
          //       onPressed: () {
          //         Navigator.of(context).push(MaterialPageRoute(
          //           builder: (context) => Chatpage(),
          //         ));
          //       },
          //       icon: const Icon(Icons.chat_outlined))
          // ],
        ),
        backgroundColor: Appcolor.lighblue,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  "Enter your Complaints  !   ",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              // Container(

              //   height:  90,
              //   padding: const EdgeInsets.all(10),
              //   decoration:
              //       BoxDecoration(border: Border.all(color: Colors.red)),
              // )

              TextFormField(
                controller: complaint,
                maxLines: 3,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffFF0000)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: ("           Enter here....."),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              ButtonCustom(
                text: 'Send',
                color: Appcolor.darkblue,
                onbuttonpressed: () {},
              )
            ],
          ),
        ));
  }

  // clear() {
  //   complaint.clear();
  // }
}
