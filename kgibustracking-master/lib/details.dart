import 'package:flutter/material.dart';
import 'driverdetails.dart';

class detailshow extends StatelessWidget {
   detailshow({Key? key}) : super(key: key);

  // final details detail;
  final driver = const[["Nataraj","9486520603"],
    ["Vigneshwaran","9361354073"],
    ["Subramani","9965563899"],
    ["Bharani","7502070630"],
    ["Sengottaiyan","7502010206"],
    ["Sadasivam","9(43572800"],
    ["Vellingiri","9003688043"],
    ["Murugesh","9659315294"],
    ["Sakthivel","9659623606"],
    ["Sethilraja","8608664100"],
    ["Nagaraj","9944818768"],
    ["Karuppusamy","9865817832"],
    ["Sevakumar","997636090"],
    ["Chandran","9843367069"],
  ];

  final index = driverpage.Index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsetsDirectional.only(top: 200,bottom: 50),
              child: CircleAvatar(
                radius: 50,
                child: Text("Image"),
              ),
            ),
           Container(
             margin: EdgeInsetsDirectional.only(bottom: 50),
             child:  Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text("Name:",style: TextStyle(fontSize: 30)),
                 Text(driver[index][0],style: TextStyle(fontSize: 30)),
               ],
             ),
           ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Mobile Number :",style: TextStyle(fontSize: 30)),
                Text(driver[index][1],style: TextStyle(fontSize: 30)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
