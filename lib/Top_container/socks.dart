import 'package:demodezi/Top_container/filter/filterpage.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

import '../product_detail/productdetail_page.dart';



class socks extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<socks> {


  void showButton() {
    showModalBottomSheet<void> (

        context: context,
        builder: (BuildContext context) {
          return Container (
            height: 300,

            child: Stack(

              children: <Widget> [
                Align(alignment: Alignment(-0.70,-0.80),
                  child: Text("New Arrivals",style: TextStyle(fontSize: 20.0),),
                ),

                Align(alignment: Alignment(-0.70,-0.40),
                  child: Text("Popular",style: TextStyle(fontSize: 20.0),),
                ),

                Align(alignment: Alignment(-0.70,-0.0),
                  child: Text("Low to High",style: TextStyle(fontSize: 20.0),),
                ),

                Align(alignment: Alignment(-0.70,0.40),
                  child: Text("High to low",style: TextStyle(fontSize: 20.0),),
                ),

                Align(alignment: Alignment(-0.70,0.75),
                  child: Text("Discount",style: TextStyle(fontSize: 20.0),),
                ),


                Align(
                  alignment: Alignment(0.90,0.90),
                  child: ElevatedButton(
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


  late PageController controller;
  GlobalKey<PageContainerState> key = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),

          // leading: Icon(Icons.menu,color: Colors.grey,),
          title: Text('SOCKS',style: TextStyle(color: Colors.black,fontFamily: 'Rosmatika (DEMO)',fontSize: 15.0),),
          //title: Image.asset("assets/images/myunde logo.png",height: 70,width: 80),
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
                    height: 7500,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("assets/images/abc.png"),
                          fit: BoxFit.cover
                      ),
                    ),

                    child:  Stack(
                      children: [
                        Align(
                          alignment: Alignment(0.0,-01.0),
                          child: Container(
                            height: 40,width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide( //
                                    color: Colors.black,
                                    width: 1.0,
                                  ),
                                )
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 50.0),
                                  child: TextButton.icon(
                                    onPressed: showButton,
                                    icon: Icon(
                                      Icons.format_line_spacing,color: Colors.grey,
                                      size: 18.0,
                                    ),
                                    label: Text('SHORT',style: TextStyle(color: Colors.grey),),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 60.0),
                                  child: VerticalDivider(
                                    thickness: 1,
                                    indent: 10,
                                    endIndent: 10,
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: TextButton.icon(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) =>  Filter()),
                                      );
                                    },

                                    icon: Icon(
                                      Icons.filter_alt,color: Colors.grey,
                                      size: 18.0,
                                    ),
                                    label: Text('FILTER',style: TextStyle(color: Colors.grey),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),


                        Align(
                          alignment: Alignment(-01.10,-0.99),
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
                                      child: PageIndicatorContainer(
                                        key: key,
                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),


//<<<<<<<<<<<<<<<< 2nd >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(01.10,-0.99),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [

                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )

                                ],
                              ),
                            ),
                          ),
                        ),


                        //<<<<<<<<<<<<<<<< 3rd >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(-01.10,-0.90),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),


                        //<<<<<<<<<<<<<<<< 4th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(01.10,-0.90),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),



                        //<<<<<<<<<<<<<<<< 5th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(-01.10,-0.81),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),


                        //<<<<<<<<<<<<<<<< 6th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(01.10,-0.81),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),



                        //<<<<<<<<<<<<<<<< 7th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(01.10,01.90),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),



                        //<<<<<<<<<<<<<<<< 8th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(01.10,-0.72),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),



                        //<<<<<<<<<<<<<<<< 9th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(-01.10,-0.72),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),



                        //<<<<<<<<<<<<<<<< 10 >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(-01.10,-0.63),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),



                        //<<<<<<<<<<<<<<<< 11th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(01.10,-0.63),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),


                        //<<<<<<<<<<<<<<<< 12th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(-01.10,-0.54),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),



                        //<<<<<<<<<<<<<<<< 13th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(01.10,-0.54),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),


                        //<<<<<<<<<<<<<<<< 14th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(01.10,-0.45),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),



                        //<<<<<<<<<<<<<<<< 15th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(-01.10,-0.45),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),


                        //<<<<<<<<<<<<<<<< 16th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(-01.10,-0.36),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),


                        //<<<<<<<<<<<<<<<< 17th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(01.10,-0.36),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),


                        //<<<<<<<<<<<<<<<< 18th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(01.10,-0.27),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.network('https://img.freepik.com/premium-psd/mens-fashion-tips-webinar-youtube-thumbnail-web-banner-template_364164-235.jpg?w=2000',
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.network('https://img.freepik.com/free-psd/men-fashion-instagram-story-template_475880-428.jpg?w=2000',
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.network('https://d1csarkz8obe9u.cloudfront.net/posterpreviews/men-fashion-sale-flyer-template-bd3a58a835e59497fc215bb25454b7c5_screen.jpg?ts=1561439850',
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.network('https://img.freepik.com/premium-vector/summer-fashion-sale-instagram-post-template_606478-50.jpg?w=1060',
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.network('https://d1csarkz8obe9u.cloudfront.net/posterpreviews/fashion-sale-poster-design-template-dd7415c58da38667b313f35d2dc7187e_screen.jpg?ts=1631645819',
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        //<<<<<<<<<<<<<<<< 19th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(-01.10,-0.27),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),


                        //<<<<<<<<<<<<<<<< 20th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(-01.10,-0.18),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),



                        //<<<<<<<<<<<<<<<< 19th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(01.10,-0.18),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),



                        //<<<<<<<<<<<<<<<< 20th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(01.10,-0.09),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),



                        //<<<<<<<<<<<<<<<< 21th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(-01.10,-0.09),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),



                        //<<<<<<<<<<<<<<<< 22th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(-01.10,-0.0),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),


                        //<<<<<<<<<<<<<<<< 23th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(01.10,-0.0),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),



                        //<<<<<<<<<<<<<<<< 24th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(-01.10,0.09),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        //<<<<<<<<<<<<<<<< 25th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(01.10,0.09),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),


                        //<<<<<<<<<<<<<<<< 26th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(01.10,0.18),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),


                        //<<<<<<<<<<<<<<<< 27th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(-01.10,0.18),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),


                        //<<<<<<<<<<<<<<<< 28th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(-01.10,0.27),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        //<<<<<<<<<<<<<<<< 29th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(01.10,0.27),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),


                        //<<<<<<<<<<<<<<<< 30th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(01.10,0.36),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),


                        //<<<<<<<<<<<<<<<< 31th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(-01.10,0.36),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        //<<<<<<<<<<<<<<<< 32th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(-01.10,0.45),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),


                        //<<<<<<<<<<<<<<<< 33th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(01.10,0.45),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),



                        //<<<<<<<<<<<<<<<< 34th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(01.10,0.54),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        //<<<<<<<<<<<<<<<< 35th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(-01.10,0.54),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),


                        //<<<<<<<<<<<<<<<< 36th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(-01.10,0.63),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        //<<<<<<<<<<<<<<<< 37th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(01.10,0.63),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),


                        //<<<<<<<<<<<<<<<< 38th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(01.10,0.72),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        //<<<<<<<<<<<<<<<< 39th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(-01.10,0.72),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),


                        //<<<<<<<<<<<<<<<< 40th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(-01.10,0.81),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),


                        //<<<<<<<<<<<<<<<< 41th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(01.10,0.81),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [

                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )

                                ],
                              ),
                            ),
                          ),
                        ),


                        //<<<<<<<<<<<<<<<< 42th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(01.10,0.90),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        //<<<<<<<<<<<<<<<< 43th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(-01.10,0.90),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        //<<<<<<<<<<<<<<<< 44th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(-01.10,0.99),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                        //<<<<<<<<<<<<<<<< 45th >>>>>>>>>>>>>>>>>>>>>>>>>>>

                        Align(
                          alignment: Alignment(01.10,0.99),
                          child: Card(
                            child: Container(
                              height: 320,width: 210,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 240,width: 220,
                                      child: PageIndicatorContainer(

                                        child: PageView(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-1.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),

                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-2.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-3.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-4.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),


                                            IconButton(
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) =>  productdetail_page()),
                                                );

                                              },
                                              icon: Image.asset("assets/images/slide-5.png",
                                                fit: BoxFit.cover,height: 500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        align: IndicatorAlign.bottom,
                                        length: 5,
                                        indicatorColor: Colors.white,
                                        indicatorSpace: 10.0,
                                        shape: IndicatorShape.circle(size: 08),
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.85,0.52),
                                    child: Text('Nameof product',style: TextStyle(fontFamily: 'cambriab'),),
                                  ),

                                  Align(
                                    alignment: Alignment(-0.85,0.63),
                                    child: Text('Men Regular fit',style: TextStyle(
                                        fontFamily: 'Acumin Variable Concept',color: Colors.grey,
                                        fontSize: 13.0
                                    ),),
                                  ),

                                  Align(
                                      alignment: Alignment(0.95,0.95),
                                      child:  FavoriteButton(
                                        iconSize: 30.0,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite $_isFavorite)');
                                        },
                                      )
                                  ),

                                  Align(alignment: Alignment(0.90,0.55),
                                    child: Text('₹499',style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.grey),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.65),
                                    child: Text('₹399',style: TextStyle(color: Colors.black),),
                                  ),

                                  Align(alignment: Alignment(0.90,0.75),
                                    child: Text('20% OFF',style: TextStyle(color: Colors.redAccent,fontSize: 12.0),),
                                  ),
                                  Align(

                                      child: Stack(
                                        children: [

                                          Align(
                                              alignment: Alignment(-0.85,0.75),
                                              child: Text("★",style: TextStyle(color: Colors.deepOrange),)
                                          ),
                                          Align(
                                            alignment: Alignment(-0.67,0.75),
                                            child: Text("4.4",style: TextStyle(color: Colors.black),),
                                          ),
                                          Align(
                                              alignment: Alignment(-0.30,0.73),
                                              child: Text("(9 Reviews)",style: TextStyle(color: Colors.deepOrange,fontSize: 10.0),)
                                          ),

                                          Align(
                                            alignment: Alignment(-0.10,0.95),
                                            child: Container(
                                              height: 27,width: 130,

                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.circular(30.0)
                                              ),
                                              child: TextButton(
                                                onPressed: showcart,
                                                child: Text("ADD TO CART",style: TextStyle(
                                                    fontSize: 10.0,fontWeight: FontWeight.w300,color: Colors.white
                                                ),),
                                              ),
                                            ),
                                          )
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
                ]
            )
        )
    );
  }

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


  //<<<<<<<<<<<<<<<<<<CART>>>>>>>>>>>>>>>>>>>>>


  void showcart() {
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
}