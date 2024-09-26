import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:disaster_relief_mgnt/firebase/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NewPrggg extends StatefulWidget {
  const NewPrggg({super.key});

  @override
  State<NewPrggg> createState() => _NewPrgggState();
}

class _NewPrgggState extends State<NewPrggg> {
  TextEditingController na = TextEditingController();
  TextEditingController ag = TextEditingController();
  Newprg obbjj = Newprg();
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
          stream:
              FirebaseFirestore.instance.collection('newproject').snapshots(),
          builder: (context, snapshot) {
            final Newdocu = snapshot.data!.docs;
            return ListView.builder(
                itemCount: Newdocu.length,
                itemBuilder: (context, index) {
                  final Newuserdet = Newdocu[index].data() as Map;
                  return ListTile(
                    title: Text(Newuserdet['Username']),
                    trailing: Text(Newuserdet['Userage']),
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
                          controller: na,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        TextFormField(
                          controller: ag,
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
                          obbjj.adData(na.text, ag.text);
                          na.clear();
                          ag.clear();
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
