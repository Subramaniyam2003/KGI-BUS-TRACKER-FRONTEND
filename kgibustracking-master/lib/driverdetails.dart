import 'package:flutter/material.dart';
import 'details.dart';

class driverpage extends StatelessWidget {
  const driverpage({Key? key}) : super(key: key);

  final bus = const["1","2","3","4","5","6","7","8","9","10","11","12","13","14"];

  // final driver = const[["Nataraj","9486520603"],
  //   ["Vigneshwaran","9361354073"],
  //   ["Subramani","9965563899"],
  //   ["Bharani","7502070630"],
  //   ["Sengottaiyan","7502010206"],
  //   ["Sadasivam","9(43572800"],
  //   ["Vellingiri","9003688043"],
  //   ["Murugesh","9659315294"],
  //   ["Sakthivel","9659623606"],
  //   ["Sethilraja","8608664100"],
  //   ["Nagaraj","9944818768"],
  //   ["Karuppusamy","9865817832"],
  //   ["Sevakumar","997636090"],
  //   ["Chandran","9843367069"],
  // ];

  static int Index = 0;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Driver Details")),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsetsDirectional.all(20),
                child: Text("Select the Bus Number to See the Driver Details",style: TextStyle(fontSize: 25,color: Colors.black)),
              ),
              GridView.builder(
                primary: false,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: bus.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return InkWell(
                      child: Container(
                        margin: EdgeInsetsDirectional.all(10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Bus No :"),
                            Text(bus[index]),
                          ],
                        ),
                      ),
                      onTap: () {
                        Index = index;
                        Navigator.push(context, MaterialPageRoute(builder:(context) => detailshow(),
                        )
                        );
                      },
                    );
                  }
                  ),
            ],
          ),
        ),
      ),
    );
  }
}