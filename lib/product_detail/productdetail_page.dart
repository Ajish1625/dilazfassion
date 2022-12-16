import 'dart:math';

import 'package:demodezi/product_detail/Size_card/size_2xl.dart';
import 'package:demodezi/product_detail/Size_card/size_L.dart';
import 'package:demodezi/product_detail/Size_card/size_m.dart';
import 'package:demodezi/product_detail/Size_card/size_s.dart';
import 'package:demodezi/product_detail/Size_card/size_xl.dart';
import 'package:demodezi/product_detail/Size_card/size_xs.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:givestarreviews/givestarreviews.dart';
import 'package:page_indicator/page_indicator.dart';

import '../Top_container/add_cart_page/Add_cart.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MyApp(),
//   ));
// }

class productdetail_page extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<productdetail_page> {

  // bool selected = false;
  //
  // Color _color = Colors.green;

  late PageController controller;
  GlobalKey<PageContainerState> key = GlobalKey();

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }


  @override
  void dispose() {
    controller.dispose();
    super.dispose();
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
        child: Column(
          children: [
            Container(
              height: 2000,width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("assets/images/Website Background 500.3000.png"),
                    fit: BoxFit.cover,
                ),
              ),

              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(0.0,-0.99),
                    child: Card(
                      child: Container(
                        height: 630,color: Colors.white,
                        child: Stack(
                          children: [
                               Align(
                                 alignment: Alignment(0.0,-01.0),
                                 child: Container(
                                  height: 500,
                                  child: PageIndicatorContainer(
                                    key: key,
                                    child: PageView(
                                      children: <Widget>[
                                        Container(
                                          child: IconButton(
                                            onPressed:() {
                                              // Navigator.push(
                                              //   context,
                                              //   MaterialPageRoute(builder: (context) =>  Second()),
                                              // );
                                            },
                                            icon: Image.asset("assets/images/slide-1.png",),
                                          ),
                                        ),
                                        Container(
                                          child: IconButton(
                                            onPressed: (){
                                              // Navigator.push(
                                              //   context,
                                              //   MaterialPageRoute(builder: (context) =>  Second()),
                                              // );

                                            },
                                            icon: Image.asset("assets/images/slide-2.png",
                                              fit: BoxFit.cover, height: 500,),
                                          ),
                                        ),
                                        Container(
                                          child: IconButton(
                                            onPressed: (){
                                              // Navigator.push(
                                              //   context,
                                              //   MaterialPageRoute(builder: (context) =>  Second()),
                                              // );

                                            },
                                            icon: Image.asset("assets/images/slide-3.png",
                                              fit: BoxFit.cover, height: 500,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: IconButton(
                                            onPressed: () {
                                              // Navigator.push(
                                              //   context,
                                              //   MaterialPageRoute(builder: (context) =>  Second()),
                                              // );
                                            },
                                            icon: Image.asset("assets/images/slide-4.png",
                                              fit: BoxFit.cover, height: 500,
                                            ),
                                          ),
                                        ),

                                        Container(
                                          child: IconButton(
                                            onPressed: () {
                                              // Navigator.push(
                                              //   context,
                                              //   MaterialPageRoute(builder: (context) =>  Second()),
                                              // );
                                            },
                                            icon: Image.asset("assets/images/slide-5.png",
                                              fit: BoxFit.cover, height: 500,
                                            ),
                                          ),
                                        ),


                                        Container(
                                          child: IconButton(
                                            onPressed: () {
                                              // Navigator.push(
                                              //   context,
                                              //   MaterialPageRoute(builder: (context) =>  Second()),
                                              // );

                                            },
                                            icon:Image.asset("assets/images/slide-6.png",
                                              fit: BoxFit.cover, height: 500,
                                            ),
                                          ),
                                        ),



                                        Container(
                                          child: IconButton(
                                            onPressed: () {
                                              // Navigator.push(
                                              //   context,
                                              //   MaterialPageRoute(builder: (context) =>  Second()),
                                              // );

                                            },
                                            icon: Image.asset("assets/images/slide-7.png",
                                              fit: BoxFit.cover, height: 500,
                                            ),
                                          ),
                                        ),
                                      ],
                                      controller: controller,
                                      reverse: true,
                                    ),
                                    align: IndicatorAlign.bottom,
                                    length: 7,
                                    indicatorColor: Colors.white,
                                    indicatorSpace: 20.0,
                                  ),
                              ),
                               ),

                            Align(
                              alignment: Alignment(-0.90,0.65),
                              child: Text("Name of the product",style: TextStyle(
                                fontWeight: FontWeight.bold,fontSize: 18.0
                              ),),
                            ),

                            Align(
                              alignment: Alignment(-0.90,0.75),
                              child: Text('Men Regular fit',style: TextStyle(
                                  fontFamily: 'Acumin Variable Concept',color: Colors.black54,
                                  fontSize: 15.0
                              ),),
                            ),

                            Align(
                                alignment: Alignment(0.95,-0.95),
                                child:  FavoriteButton(
                                  iconSize: 50.0,
                                  valueChanged: (_isFavorite) {
                                    print('Is Favorite $_isFavorite)');
                                  },
                                )
                            ),

                            Align(alignment: Alignment(-0.90,0.85),
                              child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey,fontSize: 16),),
                            ),

                            Align(alignment: Alignment(-0.60,0.85),
                              child: Text('₹399',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                            ),

                            Align(alignment: Alignment(-0.20,0.85),
                              child: Text('(20% OFF)',style: TextStyle(color: Colors.redAccent,fontSize: 16.0),),
                            ),
                            Align(alignment: Alignment(-0.90,0.95),
                              child: Text("FREE Delivery"),
                            ),

                            Align(
                                alignment: Alignment(0.80,0.63),
                                child: Text("★",style: TextStyle(color: Colors.deepOrange,fontSize: 18.0),)
                            ),
                            Align(
                              alignment: Alignment(0.95,0.63),
                              child: Text("4.4",style: TextStyle(color: Colors.black,fontSize: 18.0),),
                            ),
                            Align(
                                alignment: Alignment(0.95,0.70),
                                child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 15.0),)
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

//<<<<<<<<<<<<<<<<<<<<<<SECOND CARD >>>>>>>>>>>>>>>>>>>>>>>>>>>>
                Align(
                  alignment: Alignment(0.0,-0.30),
                  child: Container(
                    height: 150,width: MediaQuery.of(context).size.width,

                    child: Card(
                      // color: Colors.red,
                      child: Stack(
                        children: [
                          Align(alignment: Alignment(-0.90,-0.90),
                            child: Text("Size",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
                          ),
                          Align(alignment: Alignment(0.99,-01.10),
                            child: TextButton(
                              onPressed: (){},
                              child: Text("Size Chart"),
                            ),
                          ),
                          Align(
                            alignment: Alignment(-0.90,0.0),
                            child: size_xs(),
                          ),
                          Align(
                            alignment: Alignment(-0.55,0.0),
                            child: size_s(),
                          ),
                          Align(
                            alignment: Alignment(-0.20,0.0),
                            child: size_m(),
                          ),
                          Align(

                            alignment: Alignment(0.15,0.0),
                            child: size_L(),
                          ),
                          Align(
                            alignment: Alignment(0.50,0.0),
                            child: size_XL(),
                          ),
                          Align(
                            alignment: Alignment(0.90,0.0),
                            child: size_2XL(),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

 //<<<<<<<<<<<<<<<<<<<<<<<< 3 CARD >>>>>>>>>>>>>>>>>>>>>>>

                  Align(
                    alignment: Alignment(0.0,-0.05),
                    child: Container(
                    height: 300,width: MediaQuery.of(context).size.width,

                        child: Card(
                          // color: Colors.orange,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment(-0.90,-0.99),
                                child: Text("Product Details",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                              ),

                              Align(alignment: Alignment(0.0,-0.80),
                                child: Text(" Olive green solid T-shirt, has a round neck, short \n sleeves, and 1 contrast pocket",style: TextStyle(
                                    letterSpacing: 1.0
                                ),
                                ),
                              ),

                              Align(alignment: Alignment(-0.90,-0.50),
                                child: Text("Specifications",style: TextStyle(
                                  fontWeight: FontWeight.bold,fontSize: 15.0
                                ),),
                              ),


                              Align(
                                child: Container(
                                  child: Stack(
                                    children: [
                                      Align(alignment: Alignment(-0.90,-0.30),
                                        child: Text('Fabric',style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w300),),
                                      ),

                                      Align(alignment: Alignment(-0.90,-0.15),
                                        child: Text('Pure Cotton',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                                      ),
                                      Align(alignment: Alignment(-0.90,0.0),
                                        child: Divider(
                                          indent: 20,
                                          endIndent: 250,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),



                              Align(

                                child: Container(
                                  child: Stack(
                                    children: [
                                      Align(alignment: Alignment(0.30,-0.20),
                                        child: Text('Fit',style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w300),),
                                      ),

                                      Align(alignment: Alignment(0.55,-0.05),
                                        child: Text('Regular Fit',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                                      ),
                                      Align(alignment: Alignment(0.80,0.10),
                                        child: Divider(
                                          indent: 250,
                                          endIndent: 20,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),




                              Align(
                                child: Container(
                                  child: Stack(
                                    children: [
                                      Align(alignment: Alignment(-0.90,0.10),
                                        child: Text('Length',style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w300),),
                                      ),

                                      Align(alignment: Alignment(-0.90,0.25),
                                        child: Text('Regular',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                                      ),
                                      Align(alignment: Alignment(-0.90,0.40),
                                        child: Divider(
                                          indent: 20,
                                          endIndent: 250,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),




                              Align(

                                child: Container(
                                  child: Stack(
                                    children: [
                                      Align(alignment: Alignment(0.70,0.20),
                                        child: Text('Number of Pockets',style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w300),),
                                      ),

                                      Align(alignment: Alignment(0.30,0.35),
                                        child: Text('1',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                                      ),
                                      Align(alignment: Alignment(0.80,0.50),
                                        child: Divider(
                                          indent: 250,
                                          endIndent: 20,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),



                              Align(

                                child: Container(
                                  child: Stack(
                                    children: [
                                      Align(alignment: Alignment(-0.90,0.55),
                                        child: Text('Material & Care',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                      ),

                                      Align(alignment: Alignment(-0.90,0.70),
                                        child: Text(' Material: 100% Cotton,',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,letterSpacing: 1.0),),
                                      ),
                                      Align(alignment: Alignment(-0.90,0.90),
                                        child: Text('Machine Wash',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,letterSpacing: 1.0),),
                                      )


                                    ],
                                  ),
                                ),
                              ),
















                            ],
                          ),
                        )
                    ),
                  ),

//<<<<<<<<<<<<<<<<<<<<<<<<<<< 4 CARD >>>>>>>>>>>>>>>>>>>>>>>>>>>>



                  Align(
                    alignment: Alignment(0.0,0.40),
                    child: Container(
                        height: 370,width: MediaQuery.of(context).size.width,

                        child: Card(

                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment(-0.99,-0.99),
                                child: Text("Similar Product",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                              ),


                              Align(
                                // alignment: Alignment.bottomCenter,
                                    child: ListView(
                                      padding: EdgeInsets.only(top: 20.0),
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Align(

                                          child: Card(
                                            child: Container(
                                              height: 320,width: 210,
                                              color: Colors.white,
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment: Alignment(-0.99,-0.99),
                                                    child: Container(
                                                      height: 240,width: 220,
                                                      child: IconButton(
                                                        onPressed: () {
                                                          // Navigator.push(
                                                          //   context,
                                                          //   MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                          // );
                                                        },
                                                        icon: Image.asset("assets/images/slide-6.png",
                                                          fit: BoxFit.cover,height: 500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(alignment: Alignment(-0.85,0.70),
                                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                                  ),

                                                  Align(
                                                    alignment: Alignment(-0.85,0.85),
                                                    child: Text('Men Regular fit',style: TextStyle(
                                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                                        fontSize: 13.0
                                                    ),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.75),
                                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.85),
                                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.95),
                                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                                  ),
                                                  Align(

                                                      child: Stack(
                                                        children: [

                                                          Align(
                                                              alignment: Alignment(-0.85,0.98),
                                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                                          ),
                                                          Align(
                                                            alignment: Alignment(-0.67,0.98),
                                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                                          ),
                                                          Align(
                                                              alignment: Alignment(-0.30,0.95),
                                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                                          ),

                                                        ],
                                                      )
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),

                                        SizedBox(width: 20,),

                                        Align(

                                          child: Card(
                                            child: Container(
                                              height: 320,width: 210,
                                              color: Colors.white,
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment: Alignment(-0.99,-0.99),
                                                    child: Container(
                                                      height: 240,width: 220,
                                                      child: IconButton(
                                                        onPressed: () {
                                                          // Navigator.push(
                                                          //   context,
                                                          //   MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                          // );
                                                        },
                                                        icon: Image.asset("assets/images/slide-7.png",
                                                          fit: BoxFit.cover,height: 500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(alignment: Alignment(-0.85,0.70),
                                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                                  ),

                                                  Align(
                                                    alignment: Alignment(-0.85,0.85),
                                                    child: Text('Men Regular fit',style: TextStyle(
                                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                                        fontSize: 13.0
                                                    ),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.75),
                                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.85),
                                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.95),
                                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                                  ),
                                                  Align(

                                                      child: Stack(
                                                        children: [

                                                          Align(
                                                              alignment: Alignment(-0.85,0.98),
                                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                                          ),
                                                          Align(
                                                            alignment: Alignment(-0.67,0.98),
                                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                                          ),
                                                          Align(
                                                              alignment: Alignment(-0.30,0.95),
                                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                                          ),

                                                        ],
                                                      )
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),

                                        SizedBox(width: 20,),

                                        Align(

                                          child: Card(
                                            child: Container(
                                              height: 320,width: 210,
                                              color: Colors.white,
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment: Alignment(-0.99,-0.99),
                                                    child: Container(
                                                      height: 240,width: 220,
                                                      child: IconButton(
                                                        onPressed: () {
                                                          // Navigator.push(
                                                          //   context,
                                                          //   MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                          // );
                                                        },
                                                        icon: Image.asset("assets/images/slide-1.png",
                                                          fit: BoxFit.cover,height: 500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(alignment: Alignment(-0.85,0.70),
                                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                                  ),

                                                  Align(
                                                    alignment: Alignment(-0.85,0.85),
                                                    child: Text('Men Regular fit',style: TextStyle(
                                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                                        fontSize: 13.0
                                                    ),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.75),
                                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.85),
                                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.95),
                                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                                  ),
                                                  Align(

                                                      child: Stack(
                                                        children: [

                                                          Align(
                                                              alignment: Alignment(-0.85,0.98),
                                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                                          ),
                                                          Align(
                                                            alignment: Alignment(-0.67,0.98),
                                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                                          ),
                                                          Align(
                                                              alignment: Alignment(-0.30,0.95),
                                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                                          ),

                                                        ],
                                                      )
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),

                                        SizedBox(width: 20,),

                                        Align(

                                          child: Card(
                                            child: Container(
                                              height: 320,width: 210,
                                              color: Colors.white,
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment: Alignment(-0.99,-0.99),
                                                    child: Container(
                                                      height: 240,width: 220,
                                                      child: IconButton(
                                                        onPressed: () {
                                                          // Navigator.push(
                                                          //   context,
                                                          //   MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                          // );
                                                        },
                                                        icon: Image.asset("assets/images/slide-2.png",
                                                          fit: BoxFit.cover,height: 500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(alignment: Alignment(-0.85,0.70),
                                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                                  ),

                                                  Align(
                                                    alignment: Alignment(-0.85,0.85),
                                                    child: Text('Men Regular fit',style: TextStyle(
                                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                                        fontSize: 13.0
                                                    ),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.75),
                                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.85),
                                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.95),
                                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                                  ),
                                                  Align(

                                                      child: Stack(
                                                        children: [

                                                          Align(
                                                              alignment: Alignment(-0.85,0.98),
                                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                                          ),
                                                          Align(
                                                            alignment: Alignment(-0.67,0.98),
                                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                                          ),
                                                          Align(
                                                              alignment: Alignment(-0.30,0.95),
                                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                                          ),

                                                        ],
                                                      )
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),

                                        SizedBox(width: 20,),

                                        Align(

                                          child: Card(
                                            child: Container(
                                              height: 320,width: 210,
                                              color: Colors.white,
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment: Alignment(-0.99,-0.99),
                                                    child: Container(
                                                      height: 240,width: 220,
                                                      child: IconButton(
                                                        onPressed: () {
                                                          // Navigator.push(
                                                          //   context,
                                                          //   MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                          // );
                                                        },
                                                        icon: Image.asset("assets/images/slide-3.png",
                                                          fit: BoxFit.cover,height: 500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(alignment: Alignment(-0.85,0.70),
                                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                                  ),

                                                  Align(
                                                    alignment: Alignment(-0.85,0.85),
                                                    child: Text('Men Regular fit',style: TextStyle(
                                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                                        fontSize: 13.0
                                                    ),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.75),
                                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.85),
                                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.95),
                                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                                  ),
                                                  Align(

                                                      child: Stack(
                                                        children: [

                                                          Align(
                                                              alignment: Alignment(-0.85,0.98),
                                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                                          ),
                                                          Align(
                                                            alignment: Alignment(-0.67,0.98),
                                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                                          ),
                                                          Align(
                                                              alignment: Alignment(-0.30,0.95),
                                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                                          ),

                                                        ],
                                                      )
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),


                                        SizedBox(width: 20,),


                                        Align(

                                          child: Card(
                                            child: Container(
                                              height: 320,width: 210,
                                              color: Colors.white,
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment: Alignment(-0.99,-0.99),
                                                    child: Container(
                                                      height: 240,width: 220,
                                                      child: IconButton(
                                                        onPressed: () {
                                                          // Navigator.push(
                                                          //   context,
                                                          //   MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                          // );
                                                        },
                                                        icon: Image.asset("assets/images/slide-4.png",
                                                          fit: BoxFit.cover,height: 500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(alignment: Alignment(-0.85,0.70),
                                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                                  ),

                                                  Align(
                                                    alignment: Alignment(-0.85,0.85),
                                                    child: Text('Men Regular fit',style: TextStyle(
                                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                                        fontSize: 13.0
                                                    ),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.75),
                                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.85),
                                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.95),
                                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                                  ),
                                                  Align(

                                                      child: Stack(
                                                        children: [

                                                          Align(
                                                              alignment: Alignment(-0.85,0.98),
                                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                                          ),
                                                          Align(
                                                            alignment: Alignment(-0.67,0.98),
                                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                                          ),
                                                          Align(
                                                              alignment: Alignment(-0.30,0.95),
                                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                                          ),

                                                        ],
                                                      )
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),


                                        SizedBox(width: 20,),

                                        Align(

                                          child: Card(
                                            child: Container(
                                              height: 320,width: 210,
                                              color: Colors.white,
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment: Alignment(-0.99,-0.99),
                                                    child: Container(
                                                      height: 240,width: 220,
                                                      child: IconButton(
                                                        onPressed: () {
                                                          // Navigator.push(
                                                          //   context,
                                                          //   MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                          // );
                                                        },
                                                        icon: Image.asset("assets/images/slide-5.png",
                                                          fit: BoxFit.cover,height: 500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(alignment: Alignment(-0.85,0.70),
                                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                                  ),

                                                  Align(
                                                    alignment: Alignment(-0.85,0.85),
                                                    child: Text('Men Regular fit',style: TextStyle(
                                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                                        fontSize: 13.0
                                                    ),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.75),
                                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.85),
                                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.95),
                                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                                  ),
                                                  Align(

                                                      child: Stack(
                                                        children: [

                                                          Align(
                                                              alignment: Alignment(-0.85,0.98),
                                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                                          ),
                                                          Align(
                                                            alignment: Alignment(-0.67,0.98),
                                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                                          ),
                                                          Align(
                                                              alignment: Alignment(-0.30,0.95),
                                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                                          ),

                                                        ],
                                                      )
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),


                                        SizedBox(width: 20,),

                                        Align(

                                          child: Card(
                                            child: Container(
                                              height: 320,width: 210,
                                              color: Colors.white,
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment: Alignment(-0.99,-0.99),
                                                    child: Container(
                                                      height: 240,width: 220,
                                                      child: IconButton(
                                                        onPressed: () {
                                                          // Navigator.push(
                                                          //   context,
                                                          //   MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                          // );
                                                        },
                                                        icon: Image.asset("assets/images/slide-6.png",
                                                          fit: BoxFit.cover,height: 500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(alignment: Alignment(-0.85,0.70),
                                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                                  ),

                                                  Align(
                                                    alignment: Alignment(-0.85,0.85),
                                                    child: Text('Men Regular fit',style: TextStyle(
                                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                                        fontSize: 13.0
                                                    ),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.75),
                                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.85),
                                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.95),
                                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                                  ),
                                                  Align(

                                                      child: Stack(
                                                        children: [

                                                          Align(
                                                              alignment: Alignment(-0.85,0.98),
                                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                                          ),
                                                          Align(
                                                            alignment: Alignment(-0.67,0.98),
                                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                                          ),
                                                          Align(
                                                              alignment: Alignment(-0.30,0.95),
                                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                                          ),

                                                        ],
                                                      )
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),



                                        SizedBox(width: 20,),


                                        Align(

                                          child: Card(
                                            child: Container(
                                              height: 320,width: 210,
                                              color: Colors.white,
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment: Alignment(-0.99,-0.99),
                                                    child: Container(
                                                      height: 240,width: 220,
                                                      child: IconButton(
                                                        onPressed: () {
                                                          // Navigator.push(
                                                          //   context,
                                                          //   MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                          // );
                                                        },
                                                        icon: Image.asset("assets/images/slide-7.png",
                                                          fit: BoxFit.cover,height: 500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(alignment: Alignment(-0.85,0.70),
                                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                                  ),

                                                  Align(
                                                    alignment: Alignment(-0.85,0.85),
                                                    child: Text('Men Regular fit',style: TextStyle(
                                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                                        fontSize: 13.0
                                                    ),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.75),
                                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.85),
                                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                                  ),

                                                  Align(alignment: Alignment(0.90,0.95),
                                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                                  ),
                                                  Align(

                                                      child: Stack(
                                                        children: [

                                                          Align(
                                                              alignment: Alignment(-0.85,0.98),
                                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                                          ),
                                                          Align(
                                                            alignment: Alignment(-0.67,0.98),
                                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                                          ),
                                                          Align(
                                                              alignment: Alignment(-0.30,0.95),
                                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                                          ),
                                                        ],
                                                      )
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                              ),
                            ],
                          ),
                        )
                    ),
                  ),


 //<<<<<<<<<<<<<<<<<<<<<< 5 CARD >>>>>>>>>>>>>>>>>>>>>>>
                  Align(
                    alignment: Alignment(0.0,0.95),
                    child: Card(
                      child: Container(
                        // color: Colors.red,
                        height: 400,width: 400,
                        child: Stack(
                          children: [
                            Align(alignment: Alignment(-0.99,-0.99),
                              child: Text("Reviews",style: TextStyle(fontFamily: "Acumin Variable Concept",fontSize: 25.0,fontWeight: FontWeight.w500),),
                            ),

                            Align(
                              alignment: Alignment(0.0,0.50),
                              child: Container(
                                child: Builder(
                                  builder: (context) => Container(
                                      padding: EdgeInsets.all(16),
                                      child: Column(
                                        children: <Widget>[
                                          StarRating(onChanged: (rate) {
                                           _showToast(context, rate.toString());
                                          }),
                                          Divider(height: 20),
                                          GiveStarReviews(
                                            starData: [
                                              GiveStarData(
                                                  text: 'Review 1',
                                                  onChanged: (rate) {
                                                   _showToast(context, rate.toString());
                                                  }),
                                              GiveStarData(
                                                  text: 'Review 2',
                                                  onChanged: (rate) {
                                                   _showToast(context, rate.toString());
                                                  }),
                                              GiveStarData(
                                                  text: 'Review 3',
                                                  onChanged: (rate) {
                                                   _showToast(context, rate.toString());
                                                  }),
                                            ],
                                          ),
                                          SizedBox(height: 24),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Read only'),
                                              StarRating(value: 2),
                                            ],
                                          ),
                                          SizedBox(height: 24),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('7 Starts'),
                                              StarRating(
                                                value: 2,
                                                starCount: 7,
                                                onChanged: (rate) {
                                                 _showToast(context, rate.toString());
                                                },
                                              ),
                                            ],
                                          )
                                        ],
                                      )),
                                ),
                              ),
                            )
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


      bottomNavigationBar: Row(
        children: [

          Material(
            color: Colors.pink,
            child: InkWell(
              onTap: () {
                print('called on tap');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  cartpage()),
                );

              },
              child: const SizedBox(
                height: kToolbarHeight,
                width: 150,
                child: Center(
                  child: Text(
                    'Add to cart',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Material(
              color: const Color(0xffff8906),
              child: InkWell(
                onTap: () {
                  //print('called on tap');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  cartpage()),
                  );
                },
                child: const SizedBox(
                  height: kToolbarHeight,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'Buy now',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),


    );
  }



  void _showToast(BuildContext context, String txt) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(milliseconds: 500),
        content: Text(txt),
      ),
    );
  }


}
