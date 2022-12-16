import 'package:demodezi/Homepage.dart';
import 'package:demodezi/data/json_data.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'Login_page/Form_page.dart';


void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  debugPrint('initializeApp');
  await Firebase.initializeApp();
  debugPrint('didinitializeApp');
  runApp(MaterialApp(
    home: login(),
  ));
}



class login extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:

      MyApp(),

      //FormPage(),

    );
  }
}


