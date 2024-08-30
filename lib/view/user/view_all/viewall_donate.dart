
import 'package:disaster_relief_mgnt/utils/button.dart';
import 'package:disaster_relief_mgnt/utils/colors.dart';
import 'package:disaster_relief_mgnt/view/user/view_all/viewall_donatelist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ViewallDonate extends StatefulWidget {
  const ViewallDonate({super.key});

  @override
  State<ViewallDonate> createState() => _LogaState();
}

class _LogaState extends State<ViewallDonate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Donate List',
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
           actions: [
        
          IconButton(onPressed: () {
            Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => DonatedList()),
      );
          }, icon: const Icon(Icons.chat_outlined))
        ],
      ),
      backgroundColor: Appcolor.lighblue,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter Details",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text("Name and surname"),
                const SizedBox(height: 7),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'required';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                const Text("Age"),
                const SizedBox(height: 7),
                TextFormField(
                  inputFormatters: [LengthLimitingTextInputFormatter(3)],
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'required';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                const Text("Item name"),
                const SizedBox(height: 7),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'required';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                Text("Image of product"),
                SizedBox(height: 7),
                Padding(
                  padding: const EdgeInsets.only(right: 180),
                  child: InkWell(
                    onTap: () {
                      // _showImagePickerBottomSheet(context);
                    },
                    child: Container(child: Icon(Icons.add),
                        height: 130,
                        width: 150,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(
                              15), // Adjust the radius as needed
                        ),
                        // child: ClipRRect(
                        //   borderRadius: BorderRadius.circular(
                        //       15), // Adjust the radius as needed
                        // )
                        // : Icon(
                        //     Icons.add,
                        //     size: 40,
                        //   ),
                        ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text("Contact number"),
                const SizedBox(height: 7),
                TextFormField(
                  inputFormatters: [LengthLimitingTextInputFormatter(10)],
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'required';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                const Text("place"),
                const SizedBox(height: 7),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'required';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                const Text("Number of items"),
                const SizedBox(height: 7),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                 
                ),
                SizedBox(
                  height: 30,
                ),
                // SizedBox(
                //   height: Helper.h(context) * .050,
                // ),
                Center(
                  child: ButtonCustom(
                    text: "Send",
                    color: Appcolor.darkblue,
                    onbuttonpressed: () {},
                  ),
                ),
                SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
