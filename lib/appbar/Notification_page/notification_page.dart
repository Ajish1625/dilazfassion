import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MyApp(),
//   ));
// }

class notification extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Notification',style: TextStyle(color: Colors.black),),
      ),

    );
  }
}