import 'package:demodezi/Top_container/filter/Brand_list.dart';
import 'package:demodezi/Top_container/filter/Bundles_list.dart';
import 'package:demodezi/Top_container/filter/Color_list.dart';
import 'package:demodezi/Top_container/filter/Fabric_list.dart';
import 'package:demodezi/Top_container/filter/Price_Range.dart';
import 'package:demodezi/Top_container/filter/Size_list.dart';
import 'package:demodezi/Top_container/filter/Style_list.dart';
import 'package:flutter/material.dart';

import 'Discount.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MyApp(),
//   ));
// }

class Filter extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Filter> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Stack(
          children: [
            Align(
              alignment: Alignment(-0.99,-0.85),
              child: Text("Filters",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20.0),),
            ),
            Align(
              alignment: Alignment(0.90,-0.88),
              child: TextButton(
                child: Text("Clear all",style: TextStyle(color: Colors.redAccent),),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Align(
              alignment: Alignment(-0.99,0.90),
              child: Container(
                  height: 800,width: 130,
                  color: Colors.grey.withOpacity(0.3),
                  child: Stack(
                    children: [
                      //<<<<<<<<<<<<<<<<<   1  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      Align(
                        alignment: Alignment(-0.85,-0.99),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  Sizelist()),
                              );
                            },
                            child:  Container(
                              height: 50,width: 130,
                              child:  Column(
                                  children: [
                                     Text("\nSize"),
                                  ]
                              ),
                            )
                        )

                      ),
                      Align(
                        alignment: Alignment(-0.80,-0.89),
                        child: Divider(
                          thickness: 1,
                        ),
                      ),

                      //<<<<<<<<<<<<<<<<<  2   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      Align(
                        alignment: Alignment(-0.80,-0.85),
                        child:  GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  Colorlist()),
                              );
                            },
                            child:  Container(
                              height: 50,width: 130,
                              child:  Column(
                                  children: [
                                    Text("\nColor"),
                                  ]
                              ),
                            )
                        )
                      ),
                      Align(
                        alignment: Alignment(-0.80,-0.76),
                        child: Divider(
                          thickness: 1,
                        ),
                      ),

                      //<<<<<<<<<<<<<<<<<  3   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      Align(
                        alignment: Alignment(-0.80,-0.73),
                        child:  GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  Brandlist()),
                              );

                            },
                            child:  Container(
                              height: 50,width: 130,
                              child:  Column(
                                  children: [
                                    Text("\nBrand"),
                                  ]
                              ),
                            )
                        )
                      ),
                      Align(
                        alignment: Alignment(-0.80,-0.63),
                        child: Divider(
                          thickness: 1,
                        ),
                      ),

                      //<<<<<<<<<<<<<<<<<  4   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      // Align(
                      //   alignment: Alignment(-0.80,-0.56),
                      //   child: Text('Categories',style: TextStyle(fontSize: 14),),
                      // ),
                      // Align(
                      //   alignment: Alignment(-0.80,-0.49),
                      //   child: Divider(
                      //     thickness: 1,
                      //   ),
                      // ),

                      Align(
                        alignment: Alignment(-0.80,-0.59),
                        child:  GestureDetector(
                            onTap: (){

                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  Fabriclist()),
                              );

                            },
                            child:  Container(
                              height: 50,width: 130,
                              child:  Column(
                                  children: [
                                    Text("\nFabric"),
                                  ]
                              ),
                            )
                        )
                      ),
                      Align(
                        alignment: Alignment(-0.80,-0.49),
                        child: Divider(
                          thickness: 1,
                        ),
                      ),





                      //<<<<<<<<<<<<<<<<<  5   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      Align(
                        alignment: Alignment(-0.80,-0.44),
                        child:  GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  Bundleslist()),
                              );

                            },
                            child:  Container(
                              height: 50,width: 130,
                              child:  Column(
                                  children: [
                                    Text("\nBundles"),
                                  ]
                              ),
                            )
                        )
                      ),
                      Align(
                        alignment: Alignment(-0.80,-0.35),
                        child: Divider(
                          thickness: 1,
                        ),
                      ),




                      //<<<<<<<<<<<<<<<<<  6   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      Align(
                        alignment: Alignment(-0.80,-0.30),
                        child:  GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  Style_list()),
                              );

                            },
                            child:  Container(
                              height: 50,width: 130,
                              child:  Column(
                                  children: [
                                    Text("\nStyle"),
                                  ]
                              ),
                            )
                        )
                      ),
                      Align(
                        alignment: Alignment(-0.80,-0.22),
                        child: Divider(
                          thickness: 1,
                        ),
                      ),

                      //<<<<<<<<<<<<<<<<<  7   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      Align(
                        alignment: Alignment(-0.80,-0.16),
                        child:  GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  Price_Range()),
                              );

                            },
                            child:  Container(
                              height: 50,width: 130,
                              child:  Column(
                                  children: [
                                    Text("\nPrice Range"),
                                  ]
                              ),
                            )
                        )
                      ),
                      Align(
                        alignment: Alignment(-0.80,-0.08),
                        child: Divider(
                          thickness: 1,
                        ),
                      ),

                      //<<<<<<<<<<<<<<<<<  8   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      Align(
                        alignment: Alignment(-0.80,-0.01),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  Discount()),
                              );

                            },
                            child:  Container(
                              height: 50,width: 130,
                              child:  Column(
                                  children: [
                                    Text("\nDiscount"),
                                  ]
                              ),
                            )
                        )
                      ),
                      Align(
                        alignment: Alignment(-0.80,0.05),
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ],
        ),
      ),

    );
  }
}
