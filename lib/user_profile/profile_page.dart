import 'dart:io';

import 'package:editable_image/editable_image.dart';
import 'package:flutter/material.dart';

import 'help_center_page.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Explore(),
//   ));
// }

class profile_page extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<profile_page> {

  File? _profilePicFile;

  @override
  void initState() {
    super.initState();
  }

  // A simple usage of EditableImage.
  // This method gets called when trying to change an image.
  void _directUpdateImage(File? file) async {
    if (file == null) return;

    setState(() {
      _profilePicFile = file;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar:
      AppBar(
        iconTheme: IconThemeData(color: Colors.grey),

        // leading: Icon(Icons.menu,color: Colors.grey,),
        //title: Text('MYUNDE',style: TextStyle(color: Colors.black,fontFamily: 'Rosmatika (DEMO)'),),
        title: Image.asset("assets/images/myunde logo.png",height: 70,width: 80),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search,color: Colors.grey,),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.notifications_outlined,color: Colors.grey),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.favorite_border,color: Colors.grey),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_cart_outlined,color: Colors.grey,),
          ),
        ],
        backgroundColor: Colors.white,
      ),

        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 1000,width: MediaQuery.of(context).size.width,

                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("assets/images/abc.png"),
                      fit: BoxFit.cover
                  ),
                ),

                child: Stack(
                  children: [
                  Align(
                    alignment: Alignment(0.0,-0.95),
                    child: Card(
                      child: Container(
                        height: 200,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment(-0.90,0.0),
                              child: EditableImage(
                                // Define the method that will run on the change process of the image.
                                onChange: (file) => _directUpdateImage(file),

                                // Define the source of the image.
                                image: _profilePicFile != null
                                    ? Image.file(_profilePicFile!, fit: BoxFit.cover)
                                    : null,

                                // Define the size of EditableImage.
                                size: 120.0,

                                // Define the Theme of image picker.
                                imagePickerTheme: ThemeData(
                                  // Define the default brightness and colors.
                                  primaryColor: Colors.white,
                                  shadowColor: Colors.transparent,
                                  backgroundColor: Colors.white70,
                                  iconTheme: const IconThemeData(color: Colors.black87),

                                  // Define the default font family.
                                ),

                                // Define the border of the image if needed.
                                imageBorder: Border.all(color: Colors.black87, width: 2.0),

                                // Define the border of the icon if needed.
                                editIconBorder: Border.all(color: Colors.black87, width: 2.0),
                              ),
                            ),

                            Align(
                              alignment: Alignment(0.90,0.70),
                              child: GestureDetector(
                                  onTap: (){
                                    print("Container clicked");
                                  },
                                  child: new Container(
                                   height: 50,width: 220,
                                    color: Colors.red,
                                    child: Center(child: Text("LOG IN/ SIGN UP",style: TextStyle(
                                      fontWeight: FontWeight.bold,color: Colors.white,
                                      fontSize: 15.0
                                    ),)),
                                  )
                              ),
                            ),

                            Align(alignment: Alignment(0.20,-0.50),
                              child: Text("User Name",style: TextStyle(
                                fontFamily: "SourceSerifPro-Regular",fontSize: 20.0
                              ),),
                            )

                          ],
                        ),
                      ),
                    ),
                  ),


//<<<<<<<<<<<<<<<<<<<< 2 CARD >>>>>>>>>>>>>>>>>>>>>>>>>>

                  Align(alignment: Alignment(0.0,-0.40),
                    child: Card(
                      child: Container(
                        height: 180,

                        child: Stack(
                          children: [
                            Align(alignment: Alignment(-0.90,-0.80),
                              child: GestureDetector(
                                  onTap: (){
                                    print("Container clicked");
                                  },
                                  child: new Container(
                                    height: 50,width: 400,
                                    // color: Colors.red,
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment(-0.70,-0.0),
                                          child: Text("Orders",style: TextStyle(
                                              fontWeight: FontWeight.w600,color: Colors.black,
                                              fontSize: 18.0
                                          ),),
                                        ),
                                        Align(
                                          alignment: Alignment(-0.95,0.0),
                                          child: Image.network("https://cdn-icons-png.flaticon.com/512/2366/2366259.png",
                                            height: 30,width: 30,color: Colors.grey,
                                          )
                                        )
                                      ],
                                    )
                                  )
                              ),
                            ),
                            Align(alignment: Alignment(0.0,-0.30),
                              child: Divider(
                                indent: 10,
                                endIndent: 10,
                              ),
                            ),


                            Align(alignment: Alignment(-0.60,-0.0),
                              child: GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) =>  help_center()),
                                    );
                                  },
                                  child: new Container(
                                      height: 50,width: 400,
                                      // color: Colors.red,
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment(-0.70,-0.0),
                                            child: Text("Help Center",style: TextStyle(
                                                fontWeight: FontWeight.w600,color: Colors.black,
                                                fontSize: 18.0
                                            ),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.95,0.0),
                                              child: Image.network("https://cdn-icons-png.flaticon.com/512/1067/1067566.png",
                                                height: 30,width: 30,color: Colors.grey,
                                              )
                                          )
                                        ],
                                      )
                                  )
                              ),
                            ),
                            Align(alignment: Alignment(0.0,0.40),
                              child: Divider(
                                indent: 10,
                                endIndent: 10,
                              ),
                            ),



                            Align(alignment: Alignment(-0.60,0.90),
                              child: GestureDetector(
                                  onTap: (){
                                    print("Container clicked");
                                  },
                                  child: new Container(
                                      height: 50,width: 400,
                                      // color: Colors.red,
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment(-0.70,-0.0),
                                            child: Text("Wishlist",style: TextStyle(
                                                fontWeight: FontWeight.w600,color: Colors.black,
                                                fontSize: 18.0
                                            ),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.95,0.0),
                                              child: Image.network("https://cdn-icons-png.flaticon.com/512/2767/2767018.png",
                                                height: 30,width: 30,color: Colors.grey,
                                              )
                                          )
                                        ],
                                      )
                                  )
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),



//<<<<<<<<<<<<<<<<<<<<<<<<<<< 3 CARD >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                  Align(
                    alignment: Alignment(0.0,0.20),
                    child: Card(
                      child: Container(
                        height: 200,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment(-0.70,-0.80),
                              child: Text("FAQ's",style: TextStyle(
                                  fontWeight: FontWeight.w600,color: Colors.black54,
                                  fontSize: 15.0
                              ),),
                            ),

                            Align(
                              alignment: Alignment(-0.70,-0.30),
                              child: Text("ABOUT US",style: TextStyle(
                                  fontWeight: FontWeight.w600,color: Colors.black54,
                                  fontSize: 15.0
                              ),),
                            ),

                            Align(
                              alignment: Alignment(-0.70,0.25),
                              child: Text("TERMS OF USE",style: TextStyle(
                                  fontWeight: FontWeight.w600,color: Colors.black54,
                                  fontSize: 15.0
                              ),),
                            ),

                            Align(
                              alignment: Alignment(-0.70,0.80),
                              child: Text("PRIVACY POLICY",style: TextStyle(
                                  fontWeight: FontWeight.w600,color: Colors.black54,
                                  fontSize: 15.0
                              ),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),




                    Align(
                      alignment: Alignment(0.0,0.80),
                      child: GestureDetector(
                          onTap: (){
                            print("Container clicked");
                          },
                          child: new Container(
                            height: 50,width: 400,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54),
                            ),
                            // color: Colors.red,
                            child: Center(child: Text("LOG OUT",style: TextStyle(
                                fontWeight: FontWeight.w500,color: Colors.black,
                                fontSize: 16.0,fontFamily: "SourceSerifPro-Regular"
                            ),)),
                          )
                      ),
                    )









                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}