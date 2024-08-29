
import 'package:disaster_relief_mgnt/utils/button.dart';
import 'package:disaster_relief_mgnt/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserNewsupdate extends StatefulWidget {
  

  @override
  State<UserNewsupdate> createState() => _LogaState();
}

class _LogaState extends State<UserNewsupdate> {
  DateTime selecdate = DateTime.now();
  @override
  Widget build(BuildContext context) {

    final form = GlobalKey<FormState>();

    return Scaffold(
        appBar: AppBar(
          
          title: const Text(
            'News Update',
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
        backgroundColor:Appcolor.lighblue,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Form(
              key: form,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Enter Details",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text("Name"),
                  const SizedBox(height: 7),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
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
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Email"),
                  const SizedBox(height: 7),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.emailAddress,
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
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Phone number"),
                  const SizedBox(height: 7),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.phone,
                    inputFormatters: [LengthLimitingTextInputFormatter(10)],
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
                  // SizedBox(
                  //   height: 30,
                  // ),
                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: TextField( textAlign: TextAlign.center,
                  //         decoration: InputDecoration(
                  //           hintText: 'Date',
                  //           fillColor: Colors.white,
                  //           filled: true,
                  //           border: OutlineInputBorder(
                  //             borderRadius: BorderRadius.circular(20),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     const SizedBox(width: 7),
                  //     Expanded(
                  //       child: TextField(textAlign: TextAlign.center,
                  //         decoration: InputDecoration(
                  //           hintText: 'Month',
                  //           fillColor: Colors.white,
                  //           filled: true,
                  //           border: OutlineInputBorder(
                  //             borderRadius: BorderRadius.circular(20),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 90),
                  //   child: TextField(textAlign: TextAlign.center,
                  //     decoration: InputDecoration(
                  //       hintText: '  Year',
                  //       fillColor: Colors.white,
                  //       filled: true,
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(20),
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  const SizedBox(
                    height: 30,
                  ),
                  // TextField(
                  //   readOnly: true,
                  //   onTap: () {
                  //     _selectDate(context);
                  //   },
                  //   decoration: InputDecoration(
                  //     prefixIcon: Icon(Icons.calendar_today),
                  //     hintText: selectedDate != null
                  //         ? '${selectedDate!.year}-${selectedDate!.month}-${selectedDate!.day}'
                  //         : 'Select Date',
                  //     fillColor: Colors.white,
                  //     filled: true,
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(20),
                  //     ),
                  //   ),
                  // ),
                    const Text("Date"),
                  const SizedBox(height: 5),
                  TextFormField(
                    // autovalidateMode: AutovalidateMode.onUserInteraction,

                    readOnly: true,
                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),   fillColor: Colors.white,
                      filled: true,
                        // filled: true,
                        hintText: selecdate != null
                            ? "${selecdate!.day}/${selecdate!.month}/${selecdate!.year}"
                            : "Date",
                        // hintText: " Name",
                        // prefixIcon: Icon(Icons.person),
                        // fillColor: Color(0xFFF3EEEE),
                        suffixIcon: IconButton(
                            onPressed: () async {
                              final DateTime? date = await showDatePicker(
                                  context: context,
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(3000));

                              if (selecdate != null) {
                                setState(() {
                                  selecdate = date!;
                                });
                              }
                            },
                            icon: const Icon(Icons.date_range))),
                  ),
                  const SizedBox(height: 10),
                  const Text("Small Discription"),
                  const SizedBox(height: 5),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    maxLines: 3,
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
                  const SizedBox(
                    height: 30,
                  ),
                 Center(
                   child: ButtonCustom(text: "Update",color: Appcolor.darkblue,onbuttonpressed: () {
                     
                   },),
                 ),
                  const SizedBox(
                    height: 60,
                  )
                ],
              ),
            ),
          ),
        ));
  }

 
}
