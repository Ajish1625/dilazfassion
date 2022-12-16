import 'package:flutter/material.dart';

import 'Top_container/Trunks.dart';
import 'Top_container/briefs.dart';
import 'Top_container/gym_vest.dart';
import 'Top_container/inner_boxer.dart';
import 'Top_container/kids.dart';
import 'Top_container/long_wear.dart';
import 'Top_container/new_arrivals.dart';
import 'Top_container/shorts.dart';
import 'Top_container/sleeveless_vest.dart';
import 'Top_container/socks.dart';
import 'Top_container/t-shirt.dart';
import 'Top_container/tracks.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MyApp(),
//   ));
// }

class Categories extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        iconTheme: IconThemeData(color: Colors.grey),

        // leading: Icon(Icons.menu,color: Colors.grey,),
        //title: Text('MYUNDE',style: TextStyle(color: Colors.black,fontFamily: 'Rosmatika (DEMO)'),),
        title: Image.asset("assets/images/myunde logo.png",height: 70,width: 80,),
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
              height: 800,width: MediaQuery.of(context).size.width,

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
                  alignment: Alignment(-0.90,-0.99),
                  child: Text('\nTOP OFFERS ON CATEGORIES',style: TextStyle(
                    fontWeight: FontWeight.w800,fontSize: 20.0
                  ),),
                ),

//<<<<<<<<<<<<<<<<<  container 1 >>>>>>>>>>>>>>>>>>>>>>>>>>>

                  Align(alignment: Alignment(-0.90,-0.80),
                    child:  MaterialButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> newarrivals())
                        );
                      },
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:  Color(0xff7c94b6),
                          image: DecorationImage(
                            image: NetworkImage('https://image.shutterstock.com/shutterstock/photos/2118312557/display_1500/stock-vector-modern-new-arrival-shopping-background-design-2118312557.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all( Radius.circular(75.0)),
                          border: Border.all(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment(-0.85,-0.54),
                    child: Text('New Arrivals'),
                  ),


//<<<<<<<<<<<<<<< Container 2 >>>>>>>>>>>>>>>>>>>>>>>>>>
                  Align(alignment: Alignment(0.0,-0.80),
                    child:  MaterialButton(

                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> briefs())
                        );
                      },

                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:  Colors.white,
                          image: DecorationImage(
                            image: NetworkImage('https://assets.ajio.com/medias/sys_master/root/20220129/KsNL/61f50af5f997dd66234d2339/-1117Wx1400H-461477713-multi-MODEL.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all( Radius.circular(75.0)),
                          border: Border.all(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment(0.0,-0.54),
                    child: Text('Briefs'),
                  ),

//<<<<<<<<<<<<<CONTAINER 3>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                  Align(alignment: Alignment(0.90,-0.80),
                    child:  MaterialButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> Trunks())
                        );
                      },

                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:  Colors.white,
                          image: DecorationImage(
                            image: NetworkImage('https://video-images.vice.com//products/628d3ca3721909009b3712fb/gallery-image/1653423268279-sxpp2c-bbb1formfx1450.png?crop=1xw:1xh;center,center'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all( Radius.circular(75.0)),
                          border: Border.all(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment(0.75,-0.54),
                    child: Text('Trunks'),
                  ),



//<<<<<<<<<<<<<CONTAINER 4>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                  Align(alignment: Alignment(-0.90,-0.35),
                    child:  MaterialButton(
                      onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> innerboxer()),
                        );

                      },
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:  Colors.white,
                          image: DecorationImage(
                            image: NetworkImage('https://video-images.vice.com//products/628d3ca3721909009b3712fb/gallery-image/1653423268279-sxpp2c-bbb1formfx1450.png?crop=1xw:1xh;center,center'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all( Radius.circular(75.0)),
                          border: Border.all(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment(-0.85,-0.10),
                    child: Text('Inner Boxer'),
                  ),


                  //<<<<<<<<<<<<<CONTAINER 5>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                  Align(alignment: Alignment(-0.0,-0.35),
                    child:  MaterialButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> sleeveless())
                        );

                      },
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:  Colors.white,
                          image: DecorationImage(
                            image: NetworkImage('https://static05.jockey.in/uploads/dealimages/10974/zoomimages/white-modern-vest-8816-12.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all( Radius.circular(75.0)),
                          border: Border.all(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment(-0.0,-0.10),
                    child: Text('Sleeveless Vest'),
                  ),



                  //<<<<<<<<<<<<<CONTAINER 6>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                  Align(alignment: Alignment(0.90,-0.35),
                    child:  MaterialButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> gymvest())
                        );
                      },
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:  Colors.white,
                          image: DecorationImage(
                            image: NetworkImage('https://m.media-amazon.com/images/I/61FQ39J8lcL._UL1360_.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all( Radius.circular(75.0)),
                          border: Border.all(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment(0.85,-0.10),
                    child: Text('Gym Vest'),
                  ),


                  //<<<<<<<<<<<<<CONTAINER 7>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                  Align(alignment: Alignment(-0.90,0.13),
                    child:  MaterialButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> tshirt())
                        );
                      },
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:  Colors.white,
                          image: DecorationImage(
                            image: NetworkImage('https://m.media-amazon.com/images/I/61yBCMmuI4L._UL1440_.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all( Radius.circular(75.0)),
                          border: Border.all(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment(-0.80,0.33),
                    child: Text('T-Shirt'),
                  ),



                  //<<<<<<<<<<<<<CONTAINER 8>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                  Align(alignment: Alignment(-0.0,0.13),
                    child:  MaterialButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> shorts())
                        );
                      },
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:  Colors.white,
                          image: DecorationImage(
                            image: NetworkImage('https://contents.mediadecathlon.com/p1985538/6857946ffb8dd831ed1aec6281115426/p1985538.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all( Radius.circular(75.0)),
                          border: Border.all(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment(-0.0,0.33),
                    child: Text('Shorts'),
                  ),



                  //<<<<<<<<<<<<<CONTAINER 9>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                  Align(alignment: Alignment(0.90,0.13),
                    child:  MaterialButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> track())
                        );
                      },
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:  Colors.white,
                          image: DecorationImage(
                            image: NetworkImage('https://www.iciw.com/bilder/artiklar/liten/12012-001_S.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all( Radius.circular(75.0)),
                          border: Border.all(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment(0.80,0.33),
                    child: Text('Tracks'),
                  ),



                  //<<<<<<<<<<<<<CONTAINER 10>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                  Align(alignment: Alignment(-0.90,0.60),
                    child:  MaterialButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> longwear())
                        );
                      },
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:  Colors.white,
                          image: DecorationImage(
                            image: NetworkImage('https://www.iciw.com/bilder/artiklar/liten/12012-001_S.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all( Radius.circular(75.0)),
                          border: Border.all(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment(-0.80,0.74),
                    child: Text('Long Wear'),
                  ),


                  //<<<<<<<<<<<<<CONTAINER 11>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                  Align(alignment: Alignment(-0.0,0.60),
                    child:  MaterialButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> kids())
                        );
                      },
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:  Colors.white,
                          image: DecorationImage(
                            image: NetworkImage('https://m.media-amazon.com/images/I/8144yP6q4YL._UL1500_.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all( Radius.circular(75.0)),
                          border: Border.all(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment(-0.0,0.74),
                    child: Text('Kids'),
                  ),



                  //<<<<<<<<<<<<<CONTAINER 12>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                  Align(alignment: Alignment(0.90,0.60),
                    child:  MaterialButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> socks())
                        );
                      },
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:  Colors.white,
                          image: DecorationImage(
                            image: NetworkImage('https://5.imimg.com/data5/DT/HA/MY-54591328/football-shocks-500x500.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all( Radius.circular(75.0)),
                          border: Border.all(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment(0.78,0.74),
                    child: Text('Socks'),
                  ),








                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}