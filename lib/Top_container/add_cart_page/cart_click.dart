import 'package:flutter/material.dart';




  List<Map> SizeList = [
    {"name": "2XL", "isChecked": false},
    {"name": "XL", "isChecked": false},
    {
      "name": "L",
      "isChecked": false,
    },
    {"name": "M", "isChecked": false},
    {"name": "S", "isChecked": false},
    {"name": "XS", "isChecked": false}
  ];


void showbottomcart() {

  var context;
  showModalBottomSheet<void> (
      context: context,
      builder: (BuildContext context) {
        return Container (
          height: 300,

          child: Stack(

            children: <Widget> [
              Align(alignment: Alignment(-0.99,-0.99),
                child: Text("Select Size",style: TextStyle(fontSize: 20.0,
                    fontWeight: FontWeight.w600
                ),),
              ),

              Align(
                child: SingleChildScrollView(

                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child:
                    Column(  children: [

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
                      const SizedBox(height: 10),
                      const Divider(),
                      const SizedBox(height: 10),
                    ]),
                  ),
                ),
              ),

              Align(
                alignment: Alignment(0.0,0.90),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(380, 50), primary: Colors.deepOrange),

                  //  color: Colors.red,

                  child: Text('ok',style: TextStyle(color: Colors.white),
                  ),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),

        );
      }
  );
}

void setState(Null Function() param0) {
}