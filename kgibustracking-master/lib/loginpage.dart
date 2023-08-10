import 'package:flutter/material.dart';




class loginpage extends StatelessWidget {
   loginpage({Key? key}) : super(key: key);

  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirm_password = TextEditingController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome! User', style: TextStyle(fontSize: 20)),
      ),
      body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter name',
                      hintStyle: TextStyle(color: Colors.indigo)),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter email',
                      hintStyle: TextStyle(color: Colors.indigo)),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  controller: password,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter password',
                    hintStyle: TextStyle(color: Colors.indigo),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  controller: confirm_password,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm password',
                      hintStyle: TextStyle(color: Colors.indigo)),
                ),
              ),
              ElevatedButton(onPressed: (){
                print('successful');
              }, child: Text('continue',style: TextStyle(fontSize: 20))),
            ],
          )
      ),
    );
  }
}