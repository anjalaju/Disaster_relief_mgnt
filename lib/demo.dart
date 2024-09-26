import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:disaster_relief_mgnt/firebase/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Demoo extends StatefulWidget {
  const Demoo({super.key});

  @override
  State<Demoo> createState() => _DemooState();
}

class _DemooState extends State<Demoo> {
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  Cloudstr d = Cloudstr();
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
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('sample').snapshots(),
          builder: (context, snapshot) {
            final totaldoc = snapshot.data!.docs;
            return ListView.builder(
                itemCount: totaldoc.length,
                itemBuilder: (context, index) {
                  final userdata = totaldoc[index].data() as Map;
                  // final username = userdata['name'];
                  return ListTile(
                    // title: Text(username),
                    title: Text(userdata['name']),
                    trailing: Text(userdata['age']),
                  );
                });
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
                          controller: name,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        TextFormField(
                          controller: age,
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
                          d.addData(name.text, age.text);

                          name.clear();
                          age.clear();

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
