import 'package:flutter/material.dart';


//void main() => runApp( MyApp());


class help_center extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<help_center> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey),
          backgroundColor: Colors.white,
          // leading: IconButton(
          //   onPressed: (){},
          //   icon: Icon(Icons.arrow_back),
          // ),
          title: Text('24x7 Customer Support',style: TextStyle(color: Colors.black),),
        ),

        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 900,width: MediaQuery.of(context).size.width,

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
                      alignment: Alignment(0.0,-01.0),
                      child: Card(
                        child: Container(
                          height: 100,width: MediaQuery.of(context).size.width,
                        
                          child: Stack(
                            children: [
                              Align(alignment: Alignment(-0.99,0.0),
                                child: Text('Get quick customer support by selecting\n your item',style:TextStyle(
                                  fontWeight: FontWeight.w700
                                ),),
                              ),
                              Align(alignment: Alignment(0.99,0.0),
                                child: Image.network('https://as2.ftcdn.net/v2/jpg/05/12/83/43/1000_F_512834322_hhRN2oqfCviuhhb5r1eVRyQqNz9BZjEl.jpg',
                                height: 80,width: 80),
                              )
                            ],
                          ),
                        
                        ),
                      ),
                    ),


                    Align(
                      alignment: Alignment(0.0,-0.60),
                      child: Card(
                        child: Container(
                          height: 350,width: MediaQuery.of(context).size.width,

                          child: Stack(
                            children: [
                              Align(alignment: Alignment(-0.90,-0.99),
                                child: Text('Which item are you facing an issuer with?',style: TextStyle(
                                  fontWeight: FontWeight.w700,fontSize: 16
                                ),),
                              ),

                              Align(
                                alignment: Alignment(0.0,-0.80),
                                child: GestureDetector(
                                  child: Container(
                                    height: 90,width: MediaQuery.of(context).size.width,
                                   // color: Colors.deepOrange,
                                    child: Stack(
                                      children: [
                                        Align(alignment: Alignment(-0.90,0.0),
                                          child: Image.network('https://as1.ftcdn.net/v2/jpg/05/01/69/16/1000_F_501691684_ysDlyhkI5Yttu3HfncEOk7CxOodGCxQA.jpg',
                                          height: 50,width: 50),
                                        ),
                                        Align(alignment: Alignment(-0.40,-0.50),
                                          child: Text('PRODUCT NAME',style: TextStyle(fontSize: 15),),
                                        ),

                                        Align(alignment: Alignment(-0.58,0.10),
                                          child: Container(
                                            width: 08,height: 08,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.green
                                            ),
                                          ),
                                        ),

                                        Align(alignment: Alignment(-0.35,0.10),
                                          child: Text('Delivered on Sep',style: TextStyle(color: Colors.blueGrey,fontSize: 12),),
                                        ),

                                        Align(
                                          alignment: Alignment(01.0,-0.60),
                                          child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(Icons.arrow_forward_ios,size: 15.0),
                                          ),
                                        ),
                                        Align(alignment: Alignment(0.0,01.10),
                                          child: Divider(
                                            thickness: 0.3,
                                            color: Colors.blueGrey,
                                          ),
                                        )






                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Align(
                                alignment: Alignment(0.0,-0.0),
                                child: GestureDetector(
                                  child: Container(
                                    height: 90,width: MediaQuery.of(context).size.width,
                                    // color: Colors.deepOrange,
                                    child: Stack(
                                      children: [
                                        Align(alignment: Alignment(-0.90,0.0),
                                          child: Image.network('https://as1.ftcdn.net/v2/jpg/05/01/69/16/1000_F_501691684_ysDlyhkI5Yttu3HfncEOk7CxOodGCxQA.jpg',
                                              height: 50,width: 50),
                                        ),
                                        Align(alignment: Alignment(-0.40,-0.50),
                                          child: Text('PRODUCT NAME',style: TextStyle(fontSize: 15),),
                                        ),

                                        Align(alignment: Alignment(-0.58,0.10),
                                          child: Container(
                                            width: 08,height: 08,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.green
                                            ),
                                          ),
                                        ),

                                        Align(alignment: Alignment(-0.35,0.10),
                                          child: Text('Delivered on Sep',style: TextStyle(color: Colors.blueGrey,fontSize: 12),),
                                        ),

                                        Align(
                                          alignment: Alignment(01.0,-0.60),
                                          child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(Icons.arrow_forward_ios,size: 15.0),
                                          ),
                                        ),
                                        Align(alignment: Alignment(0.0,01.10),
                                          child: Divider(
                                            thickness: 0.3,
                                            color: Colors.blueGrey,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Align(
                                alignment: Alignment(0.0,0.70),
                                child: GestureDetector(
                                  child: Container(
                                    height: 90,width: MediaQuery.of(context).size.width,
                                    // color: Colors.deepOrange,
                                    child: Stack(
                                      children: [
                                        Align(alignment: Alignment(-0.90,0.0),
                                          child: Image.network('https://as1.ftcdn.net/v2/jpg/05/01/69/16/1000_F_501691684_ysDlyhkI5Yttu3HfncEOk7CxOodGCxQA.jpg',
                                              height: 50,width: 50),
                                        ),
                                        Align(alignment: Alignment(-0.40,-0.50),
                                          child: Text('PRODUCT NAME',style: TextStyle(fontSize: 15),),
                                        ),

                                        Align(alignment: Alignment(-0.58,0.10),
                                          child: Container(
                                            width: 08,height: 08,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.green
                                            ),
                                          ),
                                        ),

                                        Align(alignment: Alignment(-0.35,0.10),
                                          child: Text('Delivered on Sep',style: TextStyle(color: Colors.blueGrey,fontSize: 12),),
                                        ),

                                        Align(
                                          alignment: Alignment(01.0,-0.60),
                                          child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(Icons.arrow_forward_ios,size: 15.0),
                                          ),
                                        ),
                                        Align(alignment: Alignment(0.0,01.10),
                                          child: Divider(
                                            thickness: 0.3,
                                            color: Colors.blueGrey,
                                          ),
                                        ),


                                        Align(
                                          child: GestureDetector(
                                            child: Container(
                                              child: Stack(
                                                children: [

                                                  Align(
                                                    alignment: Alignment(-0.99,02.90),
                                                    child: TextButton(
                                                      onPressed: (){},
                                                      child: Text('View more',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment: Alignment(0.99,02.90),
                                                    child: IconButton(
                                                      onPressed: (){},
                                                      icon: Icon(Icons.arrow_forward_ios,size: 15.0),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),

                        ),
                      ),
                    ),



                    Align(
                      alignment: Alignment(0.0,0.90),
                      child: Card(
                        child: Container(
                          height: 400,width: MediaQuery.of(context).size.width,

                          child: Stack(
                            children: [

                              Align(alignment: Alignment(-0.90,-0.95),
                                child: Text('What issue are you facing?',style: TextStyle(
                                  fontWeight: FontWeight.w700,fontSize: 15
                                ),),
                              ),


                              Align(
                                alignment: Alignment(0.0,-0.73),
                                child: GestureDetector(
                                  child: Container(
                                    height: 70,width: MediaQuery.of(context).size.width,
                                    // color: Colors.deepOrange,
                                    child: Stack(
                                      children: [
                                        Align(alignment: Alignment(-0.95,-0.50),
                                          child: Text('I want to track my order',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                                        ),

                                        Align(alignment: Alignment(-0.95,0.30),
                                          child: Text('Check order status & call the delivery agent',style: TextStyle(color: Colors.blueGrey,fontSize: 11),),
                                        ),

                                        Align(
                                          alignment: Alignment(01.0,-0.60),
                                          child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(Icons.arrow_forward_ios,size: 15.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),



                              Align(
                                alignment: Alignment(0.0,-0.30),
                                child: GestureDetector(
                                  child: Container(
                                    height: 70,width: MediaQuery.of(context).size.width,
                                //    color: Colors.deepOrange,
                                    child: Stack(
                                      children: [
                                        Align(alignment: Alignment(-0.95,-0.50),
                                          child: Text('I want to manage my order',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                                        ),

                                        Align(alignment: Alignment(-0.95,0.30),
                                          child: Text('Cancel,change delivery date & address',style: TextStyle(color: Colors.blueGrey,fontSize: 11),),
                                        ),

                                        Align(
                                          alignment: Alignment(01.0,-0.60),
                                          child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(Icons.arrow_forward_ios,size: 15.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),



                              Align(
                                alignment: Alignment(0.0,0.13),
                                child: GestureDetector(
                                  child: Container(
                                    height: 70,width: MediaQuery.of(context).size.width,
                                //    color: Colors.deepOrange,
                                    child: Stack(
                                      children: [
                                        Align(alignment: Alignment(-0.95,-0.50),
                                          child: Text('I want help with returns & refunds',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                                        ),

                                        Align(alignment: Alignment(-0.95,0.30),
                                          child: Text('Manage and track returns',style: TextStyle(color: Colors.blueGrey,fontSize: 11),),
                                        ),

                                        Align(
                                          alignment: Alignment(01.0,-0.60),
                                          child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(Icons.arrow_forward_ios,size: 15.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),



                              Align(
                                alignment: Alignment(0.0,0.56),
                                child: GestureDetector(
                                  child: Container(
                                    height: 70,width: MediaQuery.of(context).size.width,
                               //     color: Colors.deepOrange,
                                    child: Stack(
                                      children: [
                                        Align(alignment: Alignment(-0.95,-0.50),
                                          child: Text('I want help with other issues',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                                        ),

                                        Align(alignment: Alignment(-0.95,0.30),
                                          child: Text('Offers,payment & all other issues',style: TextStyle(color: Colors.blueGrey,fontSize: 11),),
                                        ),

                                        Align(
                                          alignment: Alignment(01.0,-0.60),
                                          child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(Icons.arrow_forward_ios,size: 15.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),




                              Align(
                                alignment: Alignment(0.0,0.99),
                                child: GestureDetector(
                                  child: Container(
                                    height: 70,width: MediaQuery.of(context).size.width,
                               //     color: Colors.deepOrange,
                                    child: Stack(
                                      children: [
                                        Align(alignment: Alignment(-0.95,-0.50),
                                          child: Text('I want help with other issues',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                                        ),

                                        Align(alignment: Alignment(-0.95,0.30),
                                          child: Text('Offers,payment & all other issues',style: TextStyle(color: Colors.blueGrey,fontSize: 11),),
                                        ),

                                        Align(
                                          alignment: Alignment(01.0,-0.60),
                                          child: IconButton(
                                            onPressed: (){},
                                            icon: Icon(Icons.arrow_forward_ios,size: 15.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),




                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}