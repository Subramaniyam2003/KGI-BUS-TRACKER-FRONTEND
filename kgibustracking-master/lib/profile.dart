import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'register.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: 'AIzaSyAAZ-h_9S_MGUq0kqRCumFtG8GyX69PMHc ',
          appId: 'com.example.bustracking',
          messagingSenderId:'prem',
          projectId:'myfirstdatabase-89e72'
      )
  );
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget {
// This widget is the root
// of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase',
      debugShowCheckedModeBanner: false,
      home: AddData(),
    );
  }
}

class AddData extends StatelessWidget {

 var email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text("Profile"),
      ),
      body:  StreamBuilder(
        stream: FirebaseFirestore.instance.collection('userdata').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
            children: snapshot.data!.docs.map((document) {
              return Container(
                child: Center(child:
                Column(children:<Widget>[
                  Text(document['email']),
                  Text(document['password'])
                ],
                ),
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
