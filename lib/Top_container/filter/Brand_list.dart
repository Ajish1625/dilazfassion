import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MyApp(),
//   ));
// }

class Brandlist extends StatefulWidget {

  @override
  _State createState() => _State();
}

class _State extends State<Brandlist> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }


  List<Map> SizeList = [
    {"name": "ERGOWEAR", "isChecked": false},
    {"name": "UNDE EXPERT", "isChecked": false},
    {"name": "NEIWAI", "isChecked": false},
    {"name": "WEEKEND BUDDY", "isChecked": false},
    {"name": "SUNDAY TO SATURDAY", "isChecked": false},
    {"name": "LGBT", "isChecked": false}
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text(
                    'Choose your Size:',
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(height: 10),
                  const Divider(),
                  const SizedBox(height: 10),

// The checkboxes will be here
                  Column(
                      children: SizeList.map((hobby) {
                        return CheckboxListTile(
                            value: hobby["isChecked"],
                            title: Text(hobby["name"]),
                            onChanged: (newValue) {
                              setState(() {
                                hobby["isChecked"] = newValue;
                              });
                            });
                      }).toList()),

// Display the result here
                  const SizedBox(height: 10),
                  const Divider(),
                  const SizedBox(height: 10),
                ]),
              ),
            ),


          ),


          Align(
            alignment: Alignment(0.0,0.60),
            child: ElevatedButton(
              onPressed: _closeEndDrawer,
              child: const Text('OK'),
            ),
          ),

        ],
      ),


      endDrawerEnableOpenDragGesture: false,


    );
  }
}