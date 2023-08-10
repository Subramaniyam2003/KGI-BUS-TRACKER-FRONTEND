import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: 'AIzaSyAAZ-h_9S_MGUq0kqRCumFtG8GyX69PMHc ',
          appId: 'com.example.bustracking',
          messagingSenderId:'prem',
          projectId:'myfirstdatabase-89e72'
      )
  );
  runApp(MyApp());


}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mapPage(),
    );
  }
}

class mapPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<mapPage> {

  final LatLng _initialcameraposition = LatLng(20.5937, 76.9629);
  late GoogleMapController _controller;
  final Location _location = Location();
  var  _origin;
  var  _destination;
  final Set<Marker> markers = new Set();
  var firestore = FirebaseFirestore.instance;

  //  getMembers() async {
  //   var firestore = FirebaseFirestore.instance;
  //   QuerySnapshot querySnapshot = await firestore.collection("driverlocation").get();
  //   final documents = querySnapshot.docs;
  //   return documents;
  // }
  // Firestore.instance.collection('COLLECTION').document('ID')
  //     .get().then((DocumentSnapshot) =>
  // print(DocumentSnapshot.data['key'].toString());
  // );


  dynamic details;
  List location = [];
  // final List<Marker> _markers = <Marker>[
  //   Marker(
  //       markerId: MarkerId('1'),
  //       position: LatLng(20.42796133580664, 75.885749655962),
  //       infoWindow: InfoWindow(
  //         title: 'Bus Position',
  //       )
  //   ),
  // ];


  void _onMapCreated(GoogleMapController _cntlr)
  {
    _controller = _cntlr;
    _location.onLocationChanged.listen((l) async {
      _controller.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(l.latitude!, l.longitude!),zoom: 22),
        ),

      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Maps Page'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: CameraPosition(target: _initialcameraposition),
              mapType: MapType.satellite,
              onMapCreated: _onMapCreated,
              myLocationEnabled: true,
              markers:
              {
                if (_origin != null) _origin,
                if (_destination != null) _destination
              },
            ),
          ],
        ),
      ),
    );
  }
}