import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:disaster_relief_mgnt/firebase/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Ssss extends StatefulWidget {
  const Ssss({super.key});

  @override
  State<Ssss> createState() => _SsssState();
}

class _SsssState extends State<Ssss> {
  TextEditingController Usernname = TextEditingController();
  TextEditingController Useragee = TextEditingController();
  demo obj = demo();
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
          stream: FirebaseFirestore.instance.collection('intro').snapshots(),
          builder: (context, snapshot) {
            final impdoc = snapshot.data!.docs;
            return ListView.builder(
                itemCount: impdoc.length,
                itemBuilder: (context, index) {
                  final kk = impdoc[index].data() as Map;
                  return ListTile(
                    title: Text(kk['usernnam']),
                    trailing: Text(kk['userage']),
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
                          controller: Usernname,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        TextFormField(
                          controller: Useragee,
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
                          obj.addddData(Usernname.text, Useragee.text);
                          Usernname.clear();
                          Useragee.clear();
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
