import 'package:bustracking/profile.dart';
import 'package:flutter/material.dart';

import 'drivermap.dart';
import 'map.dart';

class driverhp extends StatelessWidget {
  const driverhp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white70,
      body:SafeArea(
        child:SingleChildScrollView(
          child:Column(
            children: [Container(margin: EdgeInsetsDirectional.only(top: 30),
                child:Text('BEC Bus Tracker',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),)),
              Column(crossAxisAlignment: CrossAxisAlignment.start ,
                children: [
                  Container(height:100,width:350,margin: EdgeInsets.fromLTRB(10, 30,10,0),
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      elevation: 4,
                      child: Row(children: [Container(margin: EdgeInsets.all(7.00)),
                        CircleAvatar(backgroundImage: AssetImage('assets/imgs/pro1.jpg'),radius: 35),
                        Expanded(child: Container(margin: EdgeInsets.only(left: 20),
                            child:Text('My Profile',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),))
                        ),
                        Expanded(child:Container(margin: EdgeInsets.only(left: 60),
                          child:TextButton(
                            child: Icon(Icons.arrow_forward_outlined,size: 30,color: Colors.grey,),
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  MyApp2())
                              );
                            },),),
                        ),
                      ],),),),

                  Container(height:100,width:350,margin: EdgeInsets.fromLTRB(10, 20,10,0),
                    child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      elevation: 4,
                      child: Row(children: [Container(margin: EdgeInsets.all(7.00)),
                        CircleAvatar(backgroundImage: AssetImage('assets/imgs/location1.png'),radius: 35),
                        Expanded(child: Container(margin: EdgeInsets.only(left:20),
                            child:Text('Maps',style: TextStyle(fontSize:17,fontWeight: FontWeight.w400),))
                        ),
                        Expanded(child:Container(margin: EdgeInsets.only(left: 60),
                          child:TextButton(
                            child: Icon(Icons.arrow_forward_outlined,size: 30,color: Colors.grey,),
                            onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => drivermapPage(),));
                            },),),
                        ),
                      ],),),),
                ],),
            ], ), ),),
    );
  }
}
