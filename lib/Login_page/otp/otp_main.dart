//import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'login.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   // runApp(MyApp());
// }



class otp_screen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen_otp(),
      debugShowCheckedModeBanner: false,
      color: Colors.indigo[900],
    );
  }
}
