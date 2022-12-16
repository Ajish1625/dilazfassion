import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:timelines/timelines.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MyApp(),
//   ));
// }

class order_detail extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<order_detail> {

  // int current_step = 0;
  //
  // List<Step> steps = [
  //   Step(
  //     title: Text('Step 1'),
  //     content: Text('Hello!'),
  //     isActive: true,
  //   ),
  //   Step(
  //     title: Text('Step 2'),
  //     content: Text('World!'),
  //     isActive: true,
  //   ),
  //   Step(
  //     title: Text('Step 3'),
  //     content: Text('Hello World!'),
  //     state: StepState.complete,
  //     isActive: true,
  //   ),
  // ];







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
                    alignment: Alignment(0.0,-0.99),
                    child: Card(
                      child: Container(
                        height: 600,width: MediaQuery.of(context).size.width,

                      child: Stack(
                        children: [
                          Align(alignment: Alignment(-0.90,0.05),
                            child: SizedBox(
                              height: 60.0,width: 50,
                              child: DotIndicator(),
                            ),
                          ),
                          Align(alignment: Alignment(-0.90,0.40),
                            child: SizedBox(
                              height: 150.0,width: 50,
                              child: TimelineNode.simple(),
                            )
                          ),


                      Align(alignment: Alignment(-0.90,0.85),
                        child: SizedBox(
                          height: 150.0,width: 50,
                          child: TimelineNode.simple(),
                        )
                      ),

                          Align(alignment: Alignment(-0.90,0.99),
                            child: SizedBox(
                              height: 60.0,width: 50,
                              child: DotIndicator(),
                            ),
                          ),

 //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<TEXT >>>>>>>>>>>>>>>>>>>>>>

                          Align(alignment: Alignment(-0.60,0.05),
                            child: Text('Order Confirmed',style: TextStyle(fontWeight: FontWeight.w800),),
                          ),


                          Align(alignment: Alignment(-0.65,0.30),
                            child: Text('Shipped',style: TextStyle(fontWeight: FontWeight.w800),),
                          ),


                          Align(alignment: Alignment(-0.60,0.65),
                            child: Text('Out For Delivery',style: TextStyle(fontWeight: FontWeight.w800),),
                          ),


                          Align(alignment: Alignment(-0.65,0.92),
                            child: Text('Delivered',style: TextStyle(fontWeight: FontWeight.w800),),
                          ),

                          Align(
                            alignment: Alignment(-0.90,-0.90),
                            child: Container(
                              child: Text('Order ID-00xxxxxxx00000',style: TextStyle(
                                color: Colors.black54,fontStyle: FontStyle.italic
                              ),),
                            ),
                          ),
                          Align(
                            alignment: Alignment(0.0,-0.80),
                            child: Divider(
                              thickness: 1,
                              indent: 10,endIndent: 10,
                            ),
                          ),


                          Align(
                            alignment: Alignment(0.0,-0.06),
                            child: Divider(
                              thickness: 1,
                              indent: 10,endIndent: 10,
                            ),
                          ),



                          Align(
                            alignment: Alignment(0.90,-0.70),
                            child: Container(
                              height: 100,width: 120,
                              child: IconButton(
                                onPressed: () {
                                },
                                icon: Image.network('https://thumbs.dreamstime.com/b/concept-social-de-connexion-r%C3%A9seau-de-media-vecteur-46808024.jpg',
                                ),
                              ),
                            ),
                          ),



                          Align(
                            alignment: Alignment(-0.90,-0.70),
                            child: Text('PRODUCT NAME',style: TextStyle(
                                fontFamily: 'Acumin Variable Concept',color: Colors.black,
                                fontSize: 18.0,fontWeight: FontWeight.bold
                            ),),
                          ),

                          Align(
                            alignment: Alignment(-0.90,-0.55),
                            child: Text('Men Regular fit',style: TextStyle(
                                fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                fontSize: 15.0
                            ),),
                          ),

                          Align(alignment: Alignment(-0.90,-0.35),
                            child: Text('₹499',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                          ),

                          Align(alignment: Alignment(-0.65,-0.35),
                            child: Text('(20% OFF)',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                          ),


                          Align(
                            alignment: Alignment(-0.90,-0.25),
                            child: Divider(
                              thickness: 1,
                              indent: 10,endIndent: 10,
                            ),
                          ),


                          Align(
                            alignment: Alignment(0.0,-0.15),
                            child: TextButton(
                              onPressed: (){},
                              child: Text('Need help?',style: TextStyle(
                                fontSize: 15.0,color: Colors.black
                              ),),
                            )
                          )
                        ],
                      ),
                      ),
                    ),
                  ),



                  Align(
                    alignment: Alignment(0.0,0.35),
                    child: Card(
                      child: Container(
                        height: 80,width: 400,
                        child: Row(
                          children: [

                            Center(
                              child: TextButton.icon(
                                onPressed: (){},
                                icon: Icon(Icons.list_alt_outlined,size: 30.0,),
                                label: Text('Invoice download',style: TextStyle(
                                  fontSize: 18.0,color: Colors.black
                                ),),
                              ),
                            ),

                               Padding(
                                 padding: const EdgeInsets.only(left: 170.0),
                                 child: Icon(Icons.arrow_forward_ios,size: 15.0,),
                               ),
                          ],
                        ),
                      ),
                    ),



                  ),



                  Align(
                    alignment: Alignment(0.0,0.80),
                    child: Card(
                      child: Container(
                        height: 200,width: 400,
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Align(alignment: Alignment(-0.90,-0.98),
                              child: Text("PRICE DETAILS",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 15.0,fontWeight: FontWeight.w500),),
                            ),
                            Align(alignment: Alignment(0.0,-0.80),
                              child: Divider(
                                // thickness: 1,
                                indent: 10.0,
                                endIndent: 10.0,
                                color: Colors.black54,
                              ),
                            ),

                            Align(
                              child: Container(
                                  child: Stack(
                                    children: [
                                      Align(alignment: Alignment(-0.90,-0.60),
                                          child: Text("Total MRP",style: TextStyle(fontSize: 15.0),)),
                                      Align(alignment: Alignment(0.90,-0.60),
                                          child: Text("₹         ",style: TextStyle(fontSize: 15.0,),))
                                    ],
                                  )

                              ),
                            ),



                            Align(
                              child: Container(
                                  child: Stack(
                                    children: [
                                      Align(alignment: Alignment(-0.90,-0.30),
                                          child: Text("Discount on MRP",style: TextStyle(fontSize: 15.0),)),
                                      Align(alignment: Alignment(0.90,-0.30),
                                          child: Text("₹         ",style: TextStyle(fontSize: 15.0,),))
                                    ],
                                  )

                              ),
                            ),




                            Align(
                              child: Container(
                                  child: Stack(
                                    children: [
                                      Align(alignment: Alignment(-0.90,-0.0),
                                          child: Text("Coupon Discount",style: TextStyle(fontSize: 15.0),)),
                                      Align(alignment: Alignment(0.90,-0.0),
                                          child: Text("₹         ",style: TextStyle(fontSize: 15.0,),))
                                    ],
                                  )

                              ),
                            ),



                            Align(
                              child: Container(
                                  child: Stack(
                                    children: [
                                      Align(alignment: Alignment(-0.90,0.30),
                                          child: Text("Delivery Charges",style: TextStyle(fontSize: 15.0),)),
                                      Align(alignment: Alignment(0.90,0.30),
                                          child: Text("Free Delivery   ",style: TextStyle(fontSize: 15.0,),))
                                    ],
                                  )

                              ),
                            ),
                            Align(alignment: Alignment(0.0,0.50),
                              child: Divider(
                                // thickness: 1,
                                indent: 10.0,
                                endIndent: 10.0,
                                color: Colors.black54,
                              ),
                            ),


                            Align(
                              child: Container(
                                  child: Stack(
                                    children: [
                                      Align(alignment: Alignment(-0.90,0.70),
                                          child: Text("Total Amount",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w700),)),
                                      Align(alignment: Alignment(0.90,0.70),
                                          child: Text("₹         ",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600),))
                                    ],
                                  )

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

    );
  }
}