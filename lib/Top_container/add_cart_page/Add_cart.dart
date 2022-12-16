import 'package:flutter/material.dart';



class cartpage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<cartpage> {

  int _itemCount = 0;


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








      body: Stack(
        children: [
          Container(
            height: 3000,width: MediaQuery.of(context).size.width,

            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage("assets/images/abc.png"),
                  fit: BoxFit.cover
              ),
            ),

            child: Stack(
              children: [
                Align(alignment: Alignment.topCenter,
                  child: Card(

                    child: Container(
                      height: 160,width: 400,
                      color: Colors.white,

                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment(-0.99,-0.90),
                            child: Container(
                              height: 150,width: 140,
                              child: Image.asset("assets/images/slide-1.png",
                              fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment(0.30,-0.70),
                            child: Text("Product name"),
                          ),

                          Align(
                            alignment: Alignment(0.10,-0.30),
                            child: Text("Price"),
                          ),
                          Align(
                            child: Stack(
                              children: [
                                   Align(alignment: Alignment(0.15,0.40),
                                       child: IconButton(icon:  Icon(Icons.remove),onPressed: ()=>setState(()=>_itemCount--),)),
                                 Align(alignment: Alignment(0.24,0.30),
                                     child: Text(_itemCount.toString())),
                                 Align(alignment: Alignment(0.40,0.40),
                                     child: IconButton(icon:  Icon(Icons.add),onPressed: ()=>setState(()=>_itemCount++)))
                              ],
                            ),
                          ),

                          Align(alignment: Alignment(0.99,-0.95),
                            child: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.delete_forever),color: Colors.red,
                            ),
                          )











                        ],
                      ),

                    ),
                  ),
                ),

                Align(
                  alignment: Alignment(0.0,0.70),
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




                Align(alignment: Alignment(0.0,0.95),
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text("PLACE ORDER"),
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(380, 50), primary: Colors.deepOrange),

                  ),
                )






              ],
            ),
          )
        ],
      ),

    );
  }






}