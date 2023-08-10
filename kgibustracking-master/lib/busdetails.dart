import 'package:flutter/material.dart';

class buspage extends StatelessWidget {
const buspage({Key? key}) : super(key: key);

final bus = const["1","2","3","4","5","6","7","8","9","10","11","12","13","14"];

@override
Widget build(BuildContext context) {
  return  Scaffold(
      appBar: AppBar(title: Text(' Bus Details')),
      body:
      ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return
              Card(
                  color: Colors.grey,
                  margin: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Column(
                      children: <Widget>[
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(left: 10),
                              margin: EdgeInsetsDirectional.only(top: 10),
                              child:
                              Text('Bus Number : 01',style: TextStyle(fontSize: 20),),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsetsDirectional.only(start: 10),
                              margin: EdgeInsetsDirectional.only(top: 10),
                              child:
                              Text('From : Arachalur',style: TextStyle(fontSize: 20),),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsetsDirectional.only(start: 10),
                              margin: EdgeInsetsDirectional.only(top: 10,bottom: 10),
                              child:
                              Text('To : BEC',style: TextStyle(fontSize: 20),),
                            ),
                          ],
                        ),
                      ]
                  )
              );
          }
      )
  );

}
}