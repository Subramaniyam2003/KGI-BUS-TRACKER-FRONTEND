// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
//
// class homepage extends StatefulWidget {
//   const homepage({Key? key}) : super(key: key);
//
//   @override
//   State<homepage> createState() => _homepageState();
// }
//
// class _homepageState extends State<homepage> {
//
//   class _MyloginPagestate extends State<MyloginPage> {
//   final usernameController = TextEditingController();
//   final passwordController = TextEditingController();
//
//   late SharedPreferences logindata;
//   late bool newUser;
//   late bool isObsecure = true;
//
//   @override
//   void initState() {
//   super.initState();
//
//   checkifalreadylogin();
//   }
//
//
//
//   void checkifalreadylogin() async {
//   logindata = await SharedPreferences.getInstance();
//   newUser = (logindata.getBool('login') ?? true);
//   print(newUser);
//   if (newUser == false) {
//   Navigator.pushReplacement(
//   context, MaterialPageRoute(builder: (context) => MyloginPage()));
//   print(usernameController.text);
//   }
//   }
//
//   @override
//   void dispose() {
//   usernameController.dispose();
//   passwordController.dispose();
//   super.dispose();
//   }
//
//
//   String title = "Login";
//
//
//   @override
//   Widget build(BuildContext context) {
//   return  SingleChildScrollView(
//   padding: EdgeInsets.only(top:100,bottom: 10,),
//   child: Center(
//
//   child: Column(
//   crossAxisAlignment: CrossAxisAlignment.center,
//   children: <Widget>[
//   Container(
//   margin: EdgeInsets.only(top: 10),
//   padding: EdgeInsets.all(10),
//   child: TextField(
//   controller: usernameController,
//   decoration: InputDecoration(
//   labelText: 'Email',
//   labelStyle: TextStyle(color: Colors.black45)),
//   ),
//   ),
//   Container(
//   margin: EdgeInsets.only(top: 10),
//   padding: EdgeInsets.all(10),
//   child: TextField(
//   controller: passwordController,
//   keyboardType: TextInputType.visiblePassword,
//   obscureText: isObsecure,
//   obscuringCharacter: '*',
//   decoration: InputDecoration(
//   suffixIcon: IconButton(
//   onPressed: () {
//   setState(() {
//   isObsecure = !isObsecure;
//   });
//   },
//   icon: Icon(isObsecure
//   ? Icons.visibility
//       : Icons.visibility_off)),
//   labelText: 'Password',
//   labelStyle: TextStyle(color: Colors.black45),
//   border: OutlineInputBorder(
//   borderSide: BorderSide(color: Colors.blue, width: 2),
//   ),
//   enabledBorder: OutlineInputBorder(
//   borderSide: BorderSide(color: Colors.blue, width: 2)),
//   filled: true,
//   fillColor: Colors.white),
//   ),
//   ),
//
//   Container(
//   margin: EdgeInsets.only(top: 5),
//   padding: EdgeInsets.all(5),
//   decoration: BoxDecoration(
//   color: Colors.blue,
//   border: Border.all(
//   color: Colors.blue,
//   width: 4.0,
//   ),
//   borderRadius: BorderRadius.all(Radius.circular(10))),
//   child: TextButton(
//   onPressed: () {
//   print('Login Click');
//   String userName = usernameController.text;
//   String password = passwordController.text;
//   if (userName != '' && password != '') {
//   print("Successfull");
//   print(userName);
//   logindata.setBool('login', false);
//   logindata.setString('username', userName);
//
//   } else {
//   print("Failure");
//   }
//   },
//   child: Text(
//   'Login',
//   style: TextStyle(color: Colors.white),
//   ),
//   ),
//   ),
//   Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: <Widget>[
//   Container(
//   margin:EdgeInsets.only(right: 30,top: 20),
//   child: Text('Does not have account?',style: TextStyle(fontSize: 10),),
//   ),
//   InkWell(
//   child: Container(
//   margin:EdgeInsets.only(right: 30,top: 20),
//   child: Text('Sign up'),
//   ),
//   onTap: (){
//   Navigator.push(context,MaterialPageRoute(builder: (context) => reg()));
//   },
//   )
//   ],
//   )
//   ],
//   )),
//   ),
//   )
//   );
//   }
//   }
