import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserHomepage extends StatefulWidget {
  const UserHomepage({super.key});

  @override
  State<UserHomepage> createState() => _UserHomepageState();
}

class _UserHomepageState extends State<UserHomepage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
          backgroundColor: const Color(0xff6C6974),
          child:
          Row(
            children: [
              StreamBuilder(
                  stream: _firestore.collection('firebase').snapshots(),
                  builder: (context, snapshot) {

                    return ListView(
                      padding: EdgeInsets.zero,
                      children: <Widget>[
                        const SizedBox(
                          height: 40,
                        ),
                        //  CircleAvatar(
                        //   radius: 60,
                        //   backgroundImage: AssetImage(
                        //     "images/profile.jpg",
                        //   ),
                        // ),

                        Center(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              _showImagePickerBottomSheet(context);
                            },
                            child: Container(
                              height: 130,
                              width: 150,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),

                              // child: StreamBuilder(
                              //   stream: _firestore
                              //       .collection('firebase')
                              //       .doc(id)
                              //       .snapshots(),
                              //   builder: (context, snapshot) {
                              //     if (snapshot.connectionState ==
                              //         ConnectionState.waiting) {
                              //       return const Center(
                              //           child: CircularProgressIndicator());
                              //     }
                              //     if (!snapshot.hasData ||
                              //         snapshot.data == null) {
                              //       print('No data available');
                              //     }

                              //     DocumentSnapshot<Map<String, dynamic>> data =
                              //         snapshot.data!;
                              //     if (!data.exists) {
                              //       print('Document does not exist');
                              //     }

                              //     // Check if 'image' field exists and is not null in the document
                              //     if (!data.data()!.containsKey('Image') ||
                              //         data.data()!['Image'] == null) {
                              //       print('Image URL not found');
                              //     }

                              //     String imageUrl = data.data()!['Image'];

                              //     // return CircleAvatar(
                              //     //   backgroundColor: Colors.black,
                              //     //   radius: 91,
                              //     //   child: CircleAvatar(
                              //     //     radius: 87,
                              //     //     backgroundImage: NetworkImage(imageUrl),
                              //     //   ),
                              //     // );

                              //     return imageUrl == null || imageUrl.isEmpty
                              //         ? Stack(
                              //             alignment: Alignment.center,
                              //             children: [
                              //               CircleAvatar(
                              //                 backgroundColor: Colors.black,
                              //                 radius: 91,
                              //                 child: CircleAvatar(
                              //                   radius: 87,
                              //                   backgroundImage: AssetImage(
                              //                       'images/propic.png'),
                              //                 ),
                              //               ),
                              //               Positioned(
                              //                 right: 5,
                              //                 bottom: 15,
                              //                 child: InkWell(
                              //                   splashColor: Colors.transparent,
                              //                   highlightColor:
                              //                       Colors.transparent,
                              //                   onTap: () {
                              //                     _showImagePickerBottomSheet(
                              //                         context);
                              //                   },
                              //                   child: Container(
                              //                     decoration: const BoxDecoration(
                              //                       shape: BoxShape.circle,
                              //                       color: Colors.black,
                              //                     ),
                              //                     child: const Padding(
                              //                       padding: EdgeInsets.all(4.0),
                              //                       child: Icon(
                              //                         Icons
                              //                             .camera_alt, // You can use any icon you like
                              //                         size:
                              //                             24, // Adjust the size of the icon
                              //                         color: Colors
                              //                             .white, // Adjust the color of the icon
                              //                       ),
                              //                     ),
                              //                   ),
                              //                 ),
                              //               ),
                              //             ],
                              //           )
                              //         : Stack(
                              //             alignment: Alignment.center,
                              //             children: [
                              //               CircleAvatar(
                              //                 backgroundColor: Colors.black,
                              //                 radius: 91,
                              //                 child: CircleAvatar(
                              //                   radius: 87,
                              //                   backgroundImage:
                              //                       NetworkImage(imageUrl),
                              //                 ),
                              //               ),
                              //               Positioned(
                              //                 right: 5,
                              //                 bottom: 15,
                              //                 child: InkWell(
                              //                   splashColor: Colors.transparent,
                              //                   highlightColor:
                              //                       Colors.transparent,
                              //                   onTap: () {
                              //                     _showImagePickerBottomSheet(
                              //                         context);
                              //                   },
                              //                   child: Container(
                              //                     decoration: const BoxDecoration(
                              //                       shape: BoxShape.circle,
                              //                       color: Colors.black,
                              //                     ),
                              //                     child: const Padding(
                              //                       padding: EdgeInsets.all(4.0),
                              //                       child: Icon(
                              //                         Icons
                              //                             .camera_alt, // You can use any icon you like
                              //                         size:
                              //                             24, // Adjust the size of the icon
                              //                         color: Colors
                              //                             .white, // Adjust the color of the icon
                              //                       ),
                              //                     ),
                              //                   ),
                              //                 ),
                              //               ),
                              //             ],
                              //           );
                              //   },
                              // ),
                            ),
                          ),
                        ),

                        // Center(
                        //     child: Text(
                        //   '${data['User_Name']}',
                        //   style: const TextStyle(
                        //       fontSize: 24,
                        //       fontStyle: FontStyle.italic,
                        //       fontWeight: FontWeight.w900,
                        //       color: Colors.white),
                        // )),
                        // StreamBuilder(
                        //   stream: _firestore
                        //       .collection("firebase")
                        //       .where("Id", isEqualTo: _auth.currentUser!.uid)
                        //       .snapshots(),
                        //   builder:
                        //       (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                        //     if (snapshot.hasData) {
                        //       final List<DocumentSnapshot> documents =
                        //           snapshot.data!.docs;
                        //       if (documents.isNotEmpty) {
                        //         final username = documents[0].get("User_Name");
                        //         if (username != null) {
                        //           return Center(
                        //             child: Text(
                        //               "$username",
                        //               style: const TextStyle(
                        //                 fontSize: 24,
                        //                 fontStyle: FontStyle.italic,
                        //                 fontWeight: FontWeight.w900,
                        //                 color: Colors.white,
                        //               ),
                        //             ),
                        //           );
                        //         } else {
                        //           // Handle the case where username is null
                        //           return const Text(
                        //             ",",
                        //             style: TextStyle(
                        //               fontSize: 24,
                        //               fontStyle: FontStyle.italic,
                        //               fontWeight: FontWeight.w900,
                        //               color: Colors.white,
                        //             ),
                        //           );
                        //         }
                        //       }
                        //     }
                        //     return const Center(
                        //         child:
                        //             CircularProgressIndicator()); // Placeholder for loading state
                        //   },
                        // ),

                        const SizedBox(
                          height: 30,
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.festival,
                            color: Colors.black,
                            size: 20,
                          ),
                          title: const Text(
                            'Vendor',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          onTap: () {
                            // Navigator.of(context).push(MaterialPageRoute(
                            //   builder: (context) => const eventpage(),
                            // ));
                          },
                        ),
                        const Divider(),
                        ListTile(
                          leading: const Icon(
                            Icons.settings,
                            color: Colors.black,
                            size: 20,
                          ),
                          title: const Text(
                            'Settings',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          onTap: () {
                            // Navigator.of(context).push(MaterialPageRoute(
                            //   builder: (context) => const Settingpage(),
                            // ));
                          },
                        ),
                        const Divider(),
                        ListTile(
                          leading: const Icon(
                            Icons.favorite,
                            color: Colors.black,
                            size: 20,
                          ),
                          title: const Text(
                            'Favourate',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          onTap: () {
                            // Navigator.of(context).push(MaterialPageRoute(
                            //   builder: (context) => const Shortlist(),
                            // ));
                          },
                        ),
                        const Divider(),
                        ListTile(
                          leading: const Icon(
                            Icons.menu_book_outlined,
                            color: Colors.black,
                            size: 20,
                          ),
                          title: const Text(
                            'About us',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          onTap: () {
                            // Navigator.of(context).push(MaterialPageRoute(
                            //   builder: (context) => const Aboutus(),
                            // ));
                          },
                        ),
                        const Divider(),
                        ListTile(
                          leading: const Icon(
                            Icons.edit_note,
                            color: Colors.black,
                            size: 20,
                          ),
                          title: const Text(
                            'Complaints',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          onTap: () {
                            // Navigator.of(context).push(MaterialPageRoute(
                            //   builder: (context) => const Complaint(),
                            // ));
                          },
                        ),
                        const Divider(),
                        ListTile(
                          leading: const Icon(
                            Icons.edit_calendar,
                            color: Colors.black,
                            size: 20,
                          ),
                          title: const Text(
                            'Reviews',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          onTap: () {
                            // Navigator.of(context).push(MaterialPageRoute(
                            //   builder: (context) => const Reviews(),
                            // ));
                          },
                        ),
                        const Divider(),
                        ListTile(
                          leading: const Icon(
                            Icons.logout,
                            color: Colors.black,
                            size: 20,
                          ),
                          title: const Text(
                            'Logout',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                    actionsAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15)),
                                    title: const Center(
                                        child: Column(
                                      children: [
                                        Text(
                                          "Logout",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Are You Sure?",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    )),
                                    actions: <Widget>[
                                      // ElevatedButton(
                                      //     onPressed: () {
                                      //       Navigator.of(context).pop();
                                      //     },
                                      //     style: TextButton.styleFrom(
                                      //         elevation: 5,
                                      //         minimumSize: const Size(128, 46),
                                      //         backgroundColor: Colors.white,
                                      //         shape: RoundedRectangleBorder(
                                      //             borderRadius:
                                      //                 BorderRadius.circular(6)),
                                      //         textStyle: const TextStyle(
                                      //           color: Colors.white,
                                      //           fontSize: 20,
                                      //         )),
                                      //     child: const Text(
                                      //       "Cancel",
                                      //       style:
                                      //           TextStyle(color: Colors.indigo),
                                      //     )),
                                      // ElevatedButton(
                                      //     onPressed: () async {
                                      //       // SharedPreferences preferences =
                                      //       //     await SharedPreferences
                                      //       //         .getInstance();

                                      //       // // _auth.signOut().then((value) =>Navigator.of(context).push(MaterialPageRoute(
                                      //       // //   builder: (context) => const loginpage(),
                                      //       // // )) );

                                      //       // await _auth.signOut().then(
                                      //       //       (value) =>
                                      //       //           Navigator.pushReplacement(
                                      //       //         context,
                                      //       //         MaterialPageRoute(
                                      //       //           builder: (context) =>
                                      //       //               welcome(),
                                      //       //         ),
                                      //       //       ),
                                      //       //     );
                                      //       // log('signout succes');
                                      //       // preferences.clear();
                                      //       // log('logout success');
                                      //       SharedPreferences preferences =
                                      //           await SharedPreferences
                                      //               .getInstance();
                                      //       _auth.signOut().then((value) =>
                                      //           // Navigator.pushReplacement(
                                      //           //     context,
                                      //           //     MaterialPageRoute(
                                      //           //         builder: (context) =>
                                      //           //             welcome()))); // Use pushReplacement here

                                      //           // Navigator.of(context)
                                      //           //     .pushAndRemoveUntil(
                                      //           //   MaterialPageRoute(
                                      //           //       builder: (context) =>
                                      //           //           const UserType()),
                                      //           //   (Route<dynamic> route) => false,
                                      //           // ));

                                      //       log('signout succes');
                                      //       preferences.clear();
                                      //       // log('logout successfully' as num);

                                      //       log('logout success');
                                      //       // Navigator.pop(context);
                                      //     },
                                      //     style: TextButton.styleFrom(
                                      //         elevation: 5,
                                      //         minimumSize: const Size(128, 46),
                                      //         backgroundColor: Colors.white,
                                      //         shape: RoundedRectangleBorder(
                                      //             borderRadius:
                                      //                 BorderRadius.circular(6)),
                                      //         textStyle: const TextStyle(
                                      //           color: Colors.white,
                                      //           fontSize: 20,
                                      //         )),
                                      //     child: const Text(
                                      //       "Yes",
                                      //       style: TextStyle(color: Colors.red),
                                      //     )
                                      //     ),
                                    ]);
                              },
                            );
                          },
                        ),
                        const Divider(),
                      ],
                    );
                  }),
            ],
          )),
      appBar: AppBar(
        title: const Text(
          'Home',
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
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const Shortlist(),
                //     ));
              },
              icon: const Icon(Icons.favorite)),
          IconButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const BookEventScren(),
                //     ));
              },
              icon: const Icon(Icons.event_note)),
          // Padding(
          //   padding: const EdgeInsets.only(right: 20),
          //   child: FutureBuilder(
          //     future: prod.getNotificationall(),
          //     builder: (context, snapshot) {
          //       final data = prod.allnoti;
          //       return Badge(
          //         isLabelVisible: data.isNotEmpty,
          //         label: Text(data.length.toString()),
          //         child: const Icon(Icons.notification_important_outlined),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            // Container(
            //   height: 200,
            //   width: double.infinity,
            //   color: const Color.fromARGB(255, 248, 0, 83),
            //   child: const Center(
            //     child: Image(
            //       image: AssetImage(
            //         "images/logo.png",
            //       ),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
      //     CarouselSlider(
      //   items: imgList
      //       .map((item) => ClipRRect(
      //             borderRadius: BorderRadius.circular(20),
      //             child: Image.asset(
      //               item,
      //               fit: BoxFit.cover,
      //             ),
      //           ))
      //       .toList(),
      //   options: CarouselOptions(
      //     autoPlay: true,
      //      autoPlayInterval: Duration(seconds: 2),
      //     enlargeCenterPage: true,
      //     aspectRatio: 2.0,
      //     onPageChanged: (index, reason) {
      //       setState(() {
      //         _current = index;
      //       });
      //     },
      //   ),
      // ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: imgList.asMap().entries.map((entry) {
      //     return GestureDetector(
      //       onTap: () => setState(() {
      //         _current = entry.key;
      //       }),
      //       child: Container(
      //         width: 8.0,
      //         height: 8.0,
      //         margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
      //         decoration: BoxDecoration(
      //           shape: BoxShape.circle,
      //           color: (Theme.of(context).brightness == Brightness.dark
      //                   ? Colors.grey
      //                   : Colors.indigo)
      //               .withOpacity(_current == entry.key ? 0.9 : 0.4),
      //         ),
      //       ),
      //     );
      //   }).toList(),
      // ),

            const SizedBox(
              height: 70,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffD9D9D9),
                  borderRadius: BorderRadius.circular(20)),
              height: 111,
              width: 361,
              child: InkWell(
                // onTap: () {
                //   Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => const eventpage(),
                //   ));
                // },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Events",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 111,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          // color: Colors.red
                        ),
                        child: const Image(
                          image: AssetImage(
                            "images/Mainevent.jpg",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffD9D9D9),
                  borderRadius: BorderRadius.circular(20)),
              height: 111,
              width: 361,
              child: InkWell(
                // onTap: () {
                //   Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => const Charityhomepage(),
                //   ));
                // },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Charity",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 111,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          // color: Colors.red
                        ),
                        child: const Image(
                          image: AssetImage(
                            "images/Charity.jpeg",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // File? _imageFile;
  // Future<void> _pickImage(ImageSource source) async {
  //   final picker = ImagePicker();
  //   final pickedFile = await picker.pickImage(source: source);

  //   if (pickedFile != null) {
  //     setState(() {
  //       _imageFile = File(pickedFile.path);
  //     });
  //   } else {}
  // }

  void _showImagePickerBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(
                  Icons.camera,
                  color: Colors.indigo,
                ),
                title: Text(
                  'Take a photo',
                  style: TextStyle(color: Colors.indigo),
                ),
                // onTap: () {
                //   _pickImage(ImageSource.camera).then((value) async {
                //     SettableMetadata metadata =
                //         SettableMetadata(contentType: 'image/jpeg');
                //     final currenttime = TimeOfDay.now();
                //     UploadTask uploadTask = FirebaseStorage.instance
                //         .ref()
                //         .child('shoapimage/shop$currenttime')
                //         .putFile(_imageFile!, metadata);
                //     TaskSnapshot snapshot = await uploadTask;
                //     await snapshot.ref.getDownloadURL().then((url) {
                //       String id = _auth.currentUser!.uid;
                //       FirebaseFirestore.instance
                //           .collection('firebase')
                //           .doc(id)
                //           .update({'Image': url});
                //     });
                //   });
                //   Navigator.pop(context);
                // },
              ),
              ListTile(
                leading: Icon(Icons.photo_library, color: Colors.indigo),
                title: Text(
                  'Choose from gallery',
                  style: TextStyle(color: Colors.indigo),
                ),
                // onTap: () {
                //   _pickImage(ImageSource.gallery).then((value) async {
                //     SettableMetadata metadata =
                //         SettableMetadata(contentType: 'image/jpeg');
                //     final currenttime = TimeOfDay.now();
                //     UploadTask uploadTask = FirebaseStorage.instance
                //         .ref()
                //         .child('shoapimage/shop$currenttime')
                //         .putFile(_imageFile!, metadata);
                //     TaskSnapshot snapshot = await uploadTask;
                //     await snapshot.ref.getDownloadURL().then((url) {
                //       String id = _auth.currentUser!.uid;
                //       FirebaseFirestore.instance
                //           .collection('firebase')
                //           .doc(id)
                //           .update({'Image': url});
                //     });
                //   });
                //   Navigator.pop(context);
                // },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<bool> _onWillPop(BuildContext context) async {
    bool shouldClose = await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Are you sure?'),
            content: const Text('Do you want to exit the app?'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('Yes'),
              ),
            ],
          ),
        ) ??
        false;

    if (shouldClose) {
      SystemNavigator.pop(); // Closes the app.
    }
    return Future.value(false);
  }
}

class _firestore {
  static collection(String s) {}
}


