// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp1());
// }
//
// class MyApp1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Firebase',
//       home: GetStudentName(),
//     );
//   }
// }
//
// class GetStudentName extends StatelessWidget {
//   final String documentId;
//
//   GetStudentName(this.documentId);
//
//   @override
//   Widget build(BuildContext context) {
//     CollectionReference student = FirebaseFirestore.instance.collection('userdata');
//
//     return FutureBuilder<DocumentSnapshot>(
//       //Fetching data from the documentId specified of the student
//       future: userdata.doc(documentId).get(),
//       builder:
//           (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
//
//
//         //Error Handling conditions
//         if (snapshot.hasError) {
//           return Text("Something went wrong");
//         }
//
//         if (snapshot.hasData && !snapshot.data!.exists) {
//           return Text("Document does not exist");
//         }
//
//         //Data is output to the user
//         if (snapshot.connectionState == ConnectionState.done) {
//           Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
//           return Text("Full Name: ${data['full_name']} ${data['last_name']}");
//         }
//
//         return Text("loading");
//       },
//     );
//   }
// }
