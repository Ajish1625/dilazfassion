import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class size_m extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<size_m> {

  bool selected = false;

  Color _color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration:  Duration(seconds: 1),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black54),
          color: selected ? Colors.orangeAccent : Colors.white,
          borderRadius: BorderRadius.circular(130)),
      curve: Curves.fastOutSlowIn,
      child: InkWell(
        onTap: (){
          setState(() {
            selected = !selected;
          });
        },
        child: Ink(
          height: 50,
          width: 50,
          child: Center(child: Text("M",style: TextStyle(fontSize: 20.0,color: Colors.black54),)),
        ),
      ),
    );
  }
}