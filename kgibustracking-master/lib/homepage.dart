import 'package:bustracking/map.dart';
import 'package:bustracking/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp3());
}

class MyApp3 extends StatelessWidget {
  const MyApp3({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white70,
      body:SafeArea(
        child:SingleChildScrollView(
          child:Column(
            children: [
              Container(margin: EdgeInsetsDirectional.only(top: 30),
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
                        CircleAvatar(backgroundImage: AssetImage('assets/imgs/driver1.png'),radius: 35),
                        Expanded(child: Container(margin: EdgeInsets.only(left: 20),
                            child:Text('Driver Info',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),))
                        ),
                        Expanded(child:Container(margin: EdgeInsets.only(left: 60),
                          child:TextButton(
                            child: Icon(Icons.arrow_forward_outlined,size: 30,color: Colors.grey,),
                            onPressed: (){
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const driverinfo()),
                            );},),),
                        ),
                      ],),),),

                  Container(height:100,width:350,margin: EdgeInsets.fromLTRB(10, 20,10,0),
                    child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      elevation: 4,
                      child: Row(children: [Container(margin: EdgeInsets.all(7.00)),
                        CircleAvatar(backgroundImage: AssetImage('assets/imgs/bus2.jpg'),radius: 35),
                        Expanded(child: Container(margin: EdgeInsets.only(left:20),
                            child:Text('Bus Info',style: TextStyle(fontSize:17,fontWeight: FontWeight.w400),))
                        ),
                        Expanded(child:Container(margin: EdgeInsets.only(left: 60),
                          child:TextButton(
                            child: Icon(Icons.arrow_forward_outlined,size: 30,color: Colors.grey,),
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const businfo()),
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
                              Navigator.push(context, MaterialPageRoute(builder: (context) => mapPage(),));
                            },),),
                        ),
                      ],),),),
                ],),
            ], ), ),),
    );
  }
}

class businfo extends StatelessWidget {
  const businfo({Key? key}) : super(key: key);

  final bus = const['  Bus no: 1','Bus No: 2','Bus No: 3','Bus No: 4','Bus No: 5','Bus No: 6','  Bus No: 7'];
  final route = const['Gobi - BEC','Theni - BEC','Erode - BEC','Erode - BEC','Thindal - BEC','Tirupur - BEC','Theni - BEC'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white70,

      appBar: AppBar(title: Text('BEC Bus Info',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),backgroundColor: Colors.indigo[900]),

      body:SingleChildScrollView(
        child:Column(children:[
          // Container(margin: EdgeInsetsDirectional.only(top: 30),
          //   child:Text('BEC Bus Info',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),)),
          ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: 7,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(height:100,width:350,margin: EdgeInsets.fromLTRB(5,20,10,0),
                      child:Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        elevation: 4,
                        child:Row(children: [
                          Container(padding: EdgeInsets.fromLTRB(10, 60, 0,0)),
                          CircleAvatar(backgroundImage: AssetImage('assets/imgs/bus2.jpg'),radius: 35),
                          Column(children: [
                            Container(margin: EdgeInsets.all(10.00)),
                            Text(bus[index],style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),),
                            Row(children: [
                              Container(margin: EdgeInsets.all(10.00)),
                              Text(route[index],style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),)]),
                          ],),
                        ]),),
                    ),
                  ],);}),
        ],),),); }
}

class driverinfo extends StatelessWidget {
  const driverinfo({Key? key}) : super(key: key);

  final bus = const['1','2','3','4','5','6','7'];
  final drivername = const['Arshik','Valli','Sathi','Prem',' Subramani','Raj','Lokesh'];
  final driverph = const['1234567890','1234567890','1234567890','1234567890','1234567890','1234567890','1234567890'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white70,
      appBar: AppBar(title: Text('BEC Driver Info',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),backgroundColor: Colors.indigo[900]),
      body:SingleChildScrollView(
        child:Column(children:[
          // Container(margin: EdgeInsetsDirectional.only(top: 30),
          //   child:Text('BEC Driver Details',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),)),
          Stack(children: [
            ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return  Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    elevation: 4,
                    child: Container(height:100,width:350,margin: EdgeInsets.fromLTRB(10,10,0,0),
                      child: Row(children: [
                        CircleAvatar(backgroundImage: AssetImage('assets/imgs/driver1.png'),radius: 35,),
                        Column(children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(20, 10, 60, 0)),
                          Text('BusNo :',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400)),
                          Container(margin:EdgeInsets.fromLTRB(40,10, 0, 0)),
                          Text('Driver   :',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),),
                          Container(margin: EdgeInsets.only(top:10),),
                          Text('Mobile  :',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),)
                        ]),
                        Column(children: [
                          Container(margin:EdgeInsets.fromLTRB(40,10, 0, 0),
                            padding: EdgeInsets.fromLTRB(40, 0, 0, 0),),
                          Text(bus[index],style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400)),
                          Container(margin: EdgeInsets.fromLTRB(0, 10, 0, 0),),
                          Text(drivername[index],style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),),
                          Container(padding: EdgeInsets.only(top:10),),
                          Text(driverph[index],style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),),
                        ]),
                      ],),), );
                }),],),
        ],),),); }
}