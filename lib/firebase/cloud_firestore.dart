import 'package:cloud_firestore/cloud_firestore.dart';

class Cloudstr {
  FirebaseFirestore a = FirebaseFirestore.instance;

  Future<void> addData(name, age) async {
    Map<String, dynamic> b = {
      'name': name,
      'age': age,
    };
    // await a.collection('sample').doc('c').collection('data').doc('anjal').set(b);
    await a.collection('sample').add(b);
  }
}



class fireclr{
  FirebaseFirestore r=FirebaseFirestore.instance;
  Future <void>DataAdd(username,userage)async{
    Map<String, dynamic>v={
      'Username':username,
      'Userage':userage,
    };
    await r.collection('simple').add(v);
  }
}

class demo{
  FirebaseFirestore dem=FirebaseFirestore.instance;
  Future <void>addddData(Usernname,userage)async{
    Map<String,dynamic>m={
      'usernnam':Usernname,
      'userage':userage,
    };
    dem.collection('intro').add(m);
  } 
}



class Newprg{
  FirebaseFirestore neww=FirebaseFirestore.instance;
  Future< void> adData(na,ag)async{
    Map<String,dynamic>y={
      'Username':na,
      'Userage':ag
    };
    await neww.collection('newproject').add(y);
  }
}