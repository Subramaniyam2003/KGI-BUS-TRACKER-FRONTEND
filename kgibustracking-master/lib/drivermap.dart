import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: drivermapPage(),
    );
  }
}

class drivermapPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<drivermapPage> {

  final LatLng _initialcameraposition = LatLng(20.5937, 76.9629);
  late GoogleMapController _controller;
  final Location _location = Location();
  var  _origin;
  var  _destination;
  var lat;
  var long;
  List<LatLng> latlen = [LatLng(11.0063,77.5607),];

  final Set<Polyline> _polyline = {};



  void _onMapCreated(GoogleMapController _cntlr)
  {
    _controller = _cntlr;
    _location.onLocationChanged.listen((l) {
      _controller.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(l.latitude!, l.longitude!),zoom: 17),
        ),

      );
      lat = l.latitude;
      long = l.longitude;
      latlen.add(LatLng(lat, long));
      _polyline.add(
          Polyline(
            polylineId: PolylineId("1"),
            points: latlen,
          )
      );
      print(lat);
      print(long);
      // FirebaseFirestore.instance
      //     .collection('driverlocation')
      //     .add({'location': GeoPoint(lat,long)});
    }
    );
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
              // polylines: _polyline,
              //   onLongPress: _addMarker,
              markers: {
                if (_origin != null) _origin,
                if (_destination != null) _destination,
              },
            ),
            InkWell(
              child: Container(
                color: Colors.black,
                child: Text("Sent Location Data",style: TextStyle(color: Colors.white),),
              ),
              onTap: () {
                      FirebaseFirestore.instance
                           .collection('driverlocation').doc("bus1")
                             .set({'location': GeoPoint(lat,long)}
    );
    }
            ),
          ],
        ),
      ),
    );
  }
}