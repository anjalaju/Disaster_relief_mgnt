import 'package:disaster_relief_mgnt/utils/button.dart';
import 'package:disaster_relief_mgnt/utils/colors.dart';
import 'package:flutter/material.dart';

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  final review = TextEditingController();
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

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Enter your Reviews and   ",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                ),
                Row(
                  children: [
                    Text(
                      "Experience !   ",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                    ),
                    SizedBox(
                      width: 50,
                    ),

                  

                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                    controller: review,
                    maxLines: 3,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: ("           Enter here....."),
                    )),
                const SizedBox(
                  height: 80,
                ),
               Center(
                 child: ButtonCustom(text: 'Send',color:  Appcolor.darkblue,onbuttonpressed: () {
                   
                 },),
               ),
                const SizedBox(
                  height: 70,
                ),
                const Text(
                  "   Thank you for your valuable review",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
              ],
            ),
          ),
        ));
  }
  claer(){
    review.clear();
  }
}
