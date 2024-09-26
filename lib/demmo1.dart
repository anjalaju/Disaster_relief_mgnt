import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:disaster_relief_mgnt/firebase/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Ddemmo extends StatefulWidget {
  const Ddemmo({super.key});

  @override
  State<Ddemmo> createState() => _DdemmoState();
}

class _DdemmoState extends State<Ddemmo> {
  TextEditingController username = TextEditingController();
  TextEditingController userage = TextEditingController();
  fireclr obj = fireclr();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Demo',
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
      body: StreamBuilder(stream: FirebaseFirestore.instance.collection('simple').snapshots(),
       builder: (context,snapshot){
        final fulldoc=snapshot.data!.docs;
        return ListView.builder(
          itemCount: fulldoc.length,
          itemBuilder:(context,index){
            final gg=fulldoc[index].data()as Map;
            return ListTile(
              title: Text(gg['Username']),
              trailing: Text(gg['Userage']),
            );
          } );
       }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext) {
                return AlertDialog(
                  content: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: username,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        TextFormField(
                          controller: userage,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          obj.DataAdd(username.text, userage.text);
                          userage.clear();
                          username.clear();
                          Navigator.pop(context);
                        },
                        child: const Text("submit"))
                  ],
                );
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
