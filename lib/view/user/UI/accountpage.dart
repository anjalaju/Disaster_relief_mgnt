import 'package:flutter/material.dart';

class UserAccountPage extends StatefulWidget {
  const UserAccountPage({super.key});

  @override
  State<UserAccountPage> createState() => _UserAccountPageState();
}

class _UserAccountPageState extends State<UserAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Account',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 91,
                        child: CircleAvatar(
                          radius: 87,
                          // backgroundImage: NetworkImage(imageUrl),
                        ),
                      ),
                      Positioned(
                        right: 5,
                        bottom: 5,
                        child: InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            // _showImagePickerBottomSheet(context);
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Icon(
                                Icons
                                    .camera_alt, // You can use any icon you like
                                size: 24, // Adjust the size of the icon
                                color: Colors
                                    .white, // Adjust the color of the icon
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const NameEditPage())
                      //         );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 1.5,
                        horizontal: 5,
                      ),
                      margin: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1.5),
                          borderRadius: BorderRadius.circular(6)),
                      child: const Column(
                        children: [
                          Text("Edit"),
                          Icon(
                            Icons.edit,
                            size: 15,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Mobile number",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
                Container(height: 50,width: MediaQuery.of(context).size.width,
              
              decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    
                      InkWell(
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: ((context) => const EditMobileNum())));
                        },
                        child: Container(
                          width: 30,
                          // child: Image.asset(
                          //   'images/OIP.jpeg',
                          //   fit: BoxFit.cover,
                          // ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
                const SizedBox(height: 15),
              const Text(
                "Place",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Container(height: 50,width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                 
                      InkWell(
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: ((context) => const PlaceEditPage())));
                        },
                        child: Container(
                          width: 30,
                          // child: Image.asset(
                          //   'images/OIP.jpeg',
                          //   fit: BoxFit.cover,
                          // ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // const Divider(
              //   color: Colors.black,
              // ),
              const SizedBox(height: 15),
              const Text(
                "Age",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Container(height: 50,width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
               
                      InkWell(
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: ((context) => const AgeEditPage())));
                        },
                        child: Container(
                          width: 30,
                          // child: Image.asset(
                          //   'images/OIP.jpeg',
                          //   fit: BoxFit.cover,
                          // ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // const Divider(
              //   color: Colors.black,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
