import 'package:demodezi/Homepage.dart';
import 'package:demodezi/data/json_data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Home_otp extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home_otp> {
  // String uid = "";
  // @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Image.asset("assets/images/myunde logo.png",height: 70,width: 80),
      //   backgroundColor: Colors.white,
      // ),
      body: Center(
        child: Center(
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                padding:  EdgeInsets.only(bottom: 40.0,top: 50),
                child: Image.asset("assets/images/success.png",fit: BoxFit.cover,),
              ),
              SizedBox(height: 250,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    height: 50,width: 160,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                        borderRadius: BorderRadius.circular(20.0)

                    ),
                    child: TextButton(
                      onPressed: () async {
                       await FirebaseAuth.instance.signOut();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyApp(),
                          ),
                        );

                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context)=> HomePage())
                        // );

                      },
                     child:Text("Go to home",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),)
                    ),
                  ),
                  // IconButton(
                  //   icon: Icon(Icons.logout),
                  //   onPressed: () async {
                  //     // await FirebaseAuth.instance.signOut();
                  //     // Navigator.pushReplacement(
                  //     //   context,
                  //     //   MaterialPageRoute(
                  //     //     builder: (context) => LoginScreen_otp(),
                  //     //   ),
                  //     // );
                  //   },
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
