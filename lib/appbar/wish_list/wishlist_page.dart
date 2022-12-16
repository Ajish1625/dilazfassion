import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MyApp(),
//   ));
// }

class wishlist extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Wishlist',style: TextStyle(color: Colors.black),),
      ),

      body: ListView(
        children: <Widget>[




        ],
      ),
    );
  }
}
