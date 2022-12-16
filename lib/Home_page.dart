import 'dart:async';

import 'package:demodezi/Top_container/Trunks.dart';
import 'package:demodezi/Top_container/briefs.dart';
import 'package:demodezi/Top_container/gym_vest.dart';
import 'package:demodezi/Top_container/inner_boxer.dart';
import 'package:demodezi/Top_container/kids.dart';
import 'package:demodezi/Top_container/long_wear.dart';
import 'package:demodezi/Top_container/shorts.dart';
import 'package:demodezi/Top_container/socks.dart';
import 'package:demodezi/Top_container/t-shirt.dart';
import 'package:demodezi/Top_container/tracks.dart';
import 'package:demodezi/offers_page.dart';
import 'package:demodezi/user_profile/profile_page.dart';
import 'package:demodezi/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

import 'Categories.dart';
import 'appbar/Notification_page/notification_page.dart';
import 'appbar/search/search_page.dart';
import 'appbar/wish_list/wishlist_page.dart';
import 'my order/myorder.dart';
import 'Top_container/new_arrivals.dart';
import 'Top_container/sleeveless_vest.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MyApp(),
//   ));
// }








class HomePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomePage> {
  late PageController controller;
  GlobalKey<PageContainerState> key = GlobalKey();

  int _selectedIndex = 0;

  List<Widget> _screens =[Categories(),myorder(),offers_page(),profile_page()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  int _currentPage = 0;
  late Timer _timer;
  PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    controller = PageController();

    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 6) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });

  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
    _timer?.cancel();
  }

  int counter = 0;
  int counter2 = 0;
  int counter3 = 0;



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
            padding: const EdgeInsets.symmetric(horizontal: 0.30),
            child: IconButton(
                onPressed: (){

                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context)=> Trunks())
                  // );
                  // showSearch(
                  //     context: context,
                  //     // delegate to customize the search bar
                  //     delegate: CustomSearchDelegate()
                  // );

                  setState(() {
                    counter++;
                  });

                },
                icon: Icon(Icons.search,color: Colors.grey,)),
          ),

          Stack(
            children: <Widget>[



              new IconButton(icon: Icon(Icons.notifications_none_outlined), onPressed: () {

                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> notification())
                );


                setState(() {
                  counter = 0;
                });
              }),
              counter != 0 ? new Positioned(
                right: 11,
                top: 10,
                child: new Container(
                  padding: EdgeInsets.all(2),
                  decoration: new BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 14,
                    minHeight: 14,
                  ),
                  child: Text(
                    '$counter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ) : new Container()
            ],
          ),


          // Padding(
          //         padding: const EdgeInsets.all(0.50),
          //         child: IconButton(
          //             onPressed: (){
          //               Navigator.push(context,
          //                   MaterialPageRoute(builder: (context)=> wishlist())
          //               );
          //
          //             },
          //             icon: Icon(Icons.favorite_border,color: Colors.grey)),
          //       ),


          Stack(
            children: <Widget>[
              new IconButton(icon: Icon(Icons.favorite_border_outlined), onPressed: () {
                setState(() {
                  counter2 = 0;
                });
              }),
              counter2 != 0 ? new Positioned(
                right: 11,
                top: 10,
                child: new Container(
                  padding: EdgeInsets.all(2),
                  decoration: new BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 14,
                    minHeight: 14,
                  ),
                  child: Text(
                    '$counter2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ) : new Container()
            ],
          ),




          Stack(
            children: <Widget>[
              new IconButton(icon: Icon(Icons.shopping_cart_outlined), onPressed: () {
                setState(() {
                  counter3 = 0;
                });
              }),
              counter3 != 0 ? new Positioned(
                right: 11,
                top: 10,
                child: new Container(
                  padding: EdgeInsets.all(2),
                  decoration: new BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 14,
                    minHeight: 14,
                  ),
                  child: Text(
                    '$counter3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ) : new Container()
            ],
          ),




          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: IconButton(
          //       onPressed: (){
          //         // Navigator.push(context,
          //         //     MaterialPageRoute(builder: (context)=> Trunks())
          //         // );
          //
          //         // setState(() {
          //         //   counter++;
          //         // });
          //
          //       },
          //       icon: Icon(Icons.shopping_cart_outlined,color: Colors.grey,)),
          // ),
        ],
        backgroundColor: Colors.white,
      ),
      drawer:  NavDrawer(),


      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 7000,width: MediaQuery.of(context).size.width,

              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("assets/images/Website Background 500.3000.png"),
                    fit: BoxFit.cover
                ),
              ),

              child: Stack(
                children: [


                  Align(
                    alignment: Alignment(0.0,-01.0),
                    child: Container(
                      height: 30,width: MediaQuery.of(context).size.width,
                      color: Color(0xFF00385D),
                      child: Text("Myunde's Min 40% Off Sale - Shop Now",style: TextStyle(
                        color: Colors.white,fontSize: 18,
                      ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment(0.0,-0.99),
                    child:  Container(
                      height: 100,
                      child: ListView(
                        // This next line does the trick.
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[

//<<<<<<<<<<<<<<<<<<<<TopMenu>>>>>>>>>>>>>>>>>>>>>>>>

                          //<<<<<<<<<<< first >>>>>>>
                          Column(
                            children: [
                              MaterialButton(
                                onPressed: () {

                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=> newarrivals())
                                  );

                                },
                                shape: CircleBorder(),
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
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
                              Text('New Arrivals',style: TextStyle(fontFamily: 'arial 1'),)
                            ],
                          ),

                          //<<<<<<<<<<< Second >>>>>>>
                          Column(
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=> briefs())
                                  );
                                },
                                shape: CircleBorder(),
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
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
                              Text('Briefs',style: TextStyle(fontFamily: 'arial 1'),)
                            ],
                          ),

                          //<<<<<<<<<<< Third >>>>>>>
                          Column(
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=> Trunks())
                                  );
                                },
                                shape: CircleBorder(),
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
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
                              Text('Trunks',style: TextStyle(fontFamily: 'arial 1'),)
                            ],
                          ),

                          //<<<<<<<<<<< fourth >>>>>>>
                          Column(
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=> innerboxer()),
                                  );
                                },
                                shape: CircleBorder(),
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
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
                              Text('Inner Boxer',style: TextStyle(fontFamily: 'arial 1'),)
                            ],
                          ),


                          //<<<<<<<<<<< Five >>>>>>>
                          Column(
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=> sleeveless())
                                  );
                                },
                                shape: CircleBorder(),
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
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
                              Text('Sleeveless vest',style: TextStyle(fontFamily: 'arial 1'),)
                            ],
                          ),


                          //<<<<<<<<<<< Six >>>>>>>
                          Column(
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=> gymvest())
                                  );
                                },
                                shape: CircleBorder(),
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
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
                              Text('Gym vest',style: TextStyle(fontFamily: 'arial 1'),)
                            ],
                          ),



                          //<<<<<<<<<<< Seven >>>>>>>

                          Column(
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=> tshirt())
                                  );
                                },
                                shape: CircleBorder(),
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
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
                              Text('T-Shirt',style: TextStyle(fontFamily: 'arial 1'),)
                            ],
                          ),


                          //<<<<<<<<<<< Eight >>>>>>>

                          Column(
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=> shorts())
                                  );
                                },
                                shape: CircleBorder(),
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
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
                              Text('Shorts',style: TextStyle(fontFamily: 'arial 1'),)
                            ],
                          ),


                          //<<<<<<<<<<< Nine >>>>>>>

                          Column(
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=> track())
                                  );
                                },
                                shape: CircleBorder(),
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
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
                              Text('Tracks',style: TextStyle(fontFamily: 'arial 1'),)
                            ],
                          ),


                          //<<<<<<<<<<< Ten >>>>>>>

                          Column(
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=> longwear())
                                  );
                                },
                                shape: CircleBorder(),
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
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
                              Text('Long wear',style: TextStyle(fontFamily: 'arial 1'),)
                            ],
                          ),



                          //<<<<<<<<<<< Eleven >>>>>>>

                          Column(
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=> kids())
                                  );
                                },
                                shape: CircleBorder(),
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
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
                              Text('Kids',style: TextStyle(fontFamily: 'arial 1'),)
                            ],
                          ),




                          //<<<<<<<<<<< twelve >>>>>>>

                          Column(
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=> socks())
                                  );
                                },
                                shape: CircleBorder(),
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
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
                              Text('Socks',style: TextStyle(fontFamily: 'arial 1'),)
                            ],
                          ),


                        ],
                      ),
                    ),
                  ),




//<<<<<<<<<<<<<<<<<<<< SECOND CONTAINER>>>>>>>>>>>>>>>>>>>


                  Align(
                    alignment: Alignment(0.0,-0.96),
                    child: Container(
                      color: Colors.transparent,
                      child: Container(
                        height: 500.0,

                        child: PageIndicatorContainer(
                          key: key,
                          child: PageView(
                            controller: _pageController,
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
                            // controller: controller,
                            reverse: true,
                          ),
                          align: IndicatorAlign.bottom,
                          length: 7,
                          indicatorColor: Colors.white,
                          indicatorSpace: 20.0,
                        ),
                      ),
                    ),
                  ),

// <<<<<<<<<<<<<<<<<<<THIRD CONTAINER >>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                  Align(
                    alignment: Alignment(0.0,-0.81),
                    child: Container(
                      color: Colors.transparent,
                      height: 140,width: MediaQuery.of(context).size.width,
                      child: Image.network('https://img.freepik.com/premium-vector/men-s-fashion-sale-social-media-instagram-post-template_122059-682.jpg?w=2000',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

//<<<<<<<<<<<<<<<<<<<<<<<<   FOURTH CONTAINER >>>>>>>>>>>>>>>>>>>>>>>>>>>>

                  Align(
                    alignment: Alignment(0.0,-0.74),
                    child: Container(
                      height: 810,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("assets/images/abc.png"),
                            fit: BoxFit.cover
                        ),
                      ),
                      child: Stack(
                        children: [
                          Align(alignment: Alignment(0.0,-0.99),
                            child: Text(
                              "THE NEXT BIG THING OF MEN'S UNDERWEAR",style: TextStyle(
                                fontSize: 18,fontFamily: 'Bee Leave'
                            ),
                              textAlign: TextAlign.center,
                            ),
                          ),


                          Align(
                            child: Container(
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.90,-0.85),
                                    child: Container(
                                      height: 190,width: MediaQuery.of(context).size.width *0.40,
                                      child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa9lU-S50DzYMt1igh2x2AiwbfZA1fvsM9_Q&usqp=CAU',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.70,-0.40),
                                      child: Text('Brief',style: TextStyle(fontFamily: 'Monea Alegante',
                                          fontSize: 40.0
                                      ),)
                                  ),
                                  Align( alignment: Alignment(-0.75,-0.32),
                                    child: Text('MIN 20% OFF',style: TextStyle(
                                        fontSize: 18.0,fontFamily: 'Acumin Variable Concept',fontWeight: FontWeight.bold
                                    ),),
                                  )
                                ],
                              ),
                            ),
                          ),


                          Align(
                            child: Container(
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(0.90,-0.85),
                                    child: Container(
                                      height: 190,width: MediaQuery.of(context).size.width *0.40,
                                      child: Image.network('https://vanheusenindia.imgix.net/img/app/product/4/460536-3186088.jpg?auto=format',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(0.70,-0.40),
                                      child: Text('Trunk',style: TextStyle(fontFamily: 'Monea Alegante',
                                          fontSize: 40.0
                                      ),)
                                  ),
                                  Align( alignment: Alignment(0.85,-0.32),
                                    child: Text('UPTO 30-40% OFF',style: TextStyle(
                                        fontSize: 18.0,fontFamily: 'Acumin Variable Concept',fontWeight: FontWeight.bold
                                    ),),
                                  )
                                ],
                              ),
                            ),
                          ),

                          Align(
                            child: Container(
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.90,-0.05),
                                    child: Container(
                                      height: 190,width: MediaQuery.of(context).size.width *0.40,
                                      child: Image.network('https://rukminim1.flixcart.com/image/832/832/kdnf98w0hlty2aw-0/vest/p/0/l/l-1-ss20-vest-rn-olive-react-maniac-original-imafuhz5hvf2pzsk.jpeg?q=70',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.70,0.24),
                                      child: Text('Vest',style: TextStyle(fontFamily: 'Monea Alegante',
                                          fontSize: 40.0
                                      ),)
                                  ),
                                  Align( alignment: Alignment(-0.85,0.30),
                                    child: Text('UPTO 20-30% OFF',style: TextStyle(
                                        fontSize: 18.0,fontFamily: 'Acumin Variable Concept',fontWeight: FontWeight.bold
                                    ),),
                                  )
                                ],
                              ),
                            ),
                          ),

                          Align(
                            child: Container(
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(0.90,-0.05),
                                    child: Container(
                                      height: 190,width: MediaQuery.of(context).size.width *0.40,
                                      child: Image.network('https://assets.adidas.com/images/w_383,h_383,f_auto,q_auto,fl_lossy,c_fill,g_auto/856e874762eb48da8e22acda00efaeb4_9366/tiro-track-pants.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(0.90,0.24),
                                      child: Text('Track Pants',style: TextStyle(fontFamily: 'Monea Alegante',
                                          fontSize: 35.0
                                      ),)
                                  ),
                                  Align( alignment: Alignment(0.85,0.30),
                                    child: Text('UPTO 20-30% OFF',style: TextStyle(
                                        fontSize: 18.0,fontFamily: 'Acumin Variable Concept',fontWeight: FontWeight.bold
                                    ),),
                                  )
                                ],
                              ),
                            ),
                          ),


                          Align(
                            child: Container(
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.90,0.73),
                                    child: Container(
                                      height: 190,width: MediaQuery.of(context).size.width *0.40,
                                      child: Image.network('https://cdn.shopify.com/s/files/1/0245/1138/1585/products/22BSS47485_1.jpg?v=1647864679',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.70,0.87),
                                      child: Text('Shots',style: TextStyle(fontFamily: 'Monea Alegante',
                                          fontSize: 35.0
                                      ),)
                                  ),
                                  Align( alignment: Alignment(-0.85,0.92),
                                    child: Text('UPTO 20-30% OFF',style: TextStyle(
                                        fontSize: 18.0,fontFamily: 'Acumin Variable Concept',fontWeight: FontWeight.bold
                                    ),),
                                  )
                                ],
                              ),
                            ),
                          ),


                          Align(
                            child: Container(
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(0.90,0.73),
                                    child: Container(
                                      height: 190,width: MediaQuery.of(context).size.width *0.40,
                                      child: Image.network('https://voltamagenta.pt/wp-content/uploads/2020/01/6659_01_1_1.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(0.70,0.87),
                                      child: Text('T-Shirt',style: TextStyle(fontFamily: 'Monea Alegante',
                                          fontSize: 35.0
                                      ),)
                                  ),
                                  Align( alignment: Alignment(0.85,0.92),
                                    child: Text('UPTO 20-30% OFF',style: TextStyle(
                                        fontSize: 18.0,fontFamily: 'Acumin Variable Concept',fontWeight: FontWeight.bold
                                    ),),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

//<<<<<<<<<<<<<<<<<<<<<<<<<<<FIVE CONTAINER>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                  Align(alignment: Alignment(0.0,-0.51),
                    child: Container(
                      height: 350,width: MediaQuery.of(context).size.width,
                      color: Color(0xFF00385D),
                      child: Stack(
                        children: [
                          Align(alignment: Alignment(0.0,-0.95),
                            child: Text(
                              'EXPLORE OUR BRANDS',style: TextStyle(
                                fontFamily: 'Monea Alegante',fontSize: 35.0,
                                color: Colors.white
                            ),
                            ),

                          ),
                          Align(
                            alignment: Alignment(-0.98,-0.50),
                            child: Container(
                                height: 120,width: 120,
                                child: Stack(
                                  children: [
                                    Image.asset('assets/images/ERGOWEAR.png',
                                      color: Colors.white,),
                                    Align(
                                      alignment: Alignment(0.0,0.80),
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              padding: EdgeInsets.only(right:05,left: 05),
                                              textStyle:  TextStyle(fontSize: 15),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.zero
                                              )
                                          ),
                                          onPressed: (){},
                                          child: Text('SHOP NOW',style: TextStyle(
                                            color: Color(0xFF00385D),
                                          ),)),
                                    ),
                                  ],
                                )
                            ),
                          ),


                          Align(
                            alignment: Alignment(-0.0,-0.50),
                            child: Container(
                                height: 120,width: 120,
                                child: Stack(
                                  children: [
                                    Image.asset('assets/images/UNDEEXPERT.png'),
                                    Align(
                                      alignment: Alignment(0.0,0.80),
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              padding: EdgeInsets.only(right:05,left: 05),
                                              textStyle:  TextStyle(fontSize: 15),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.zero
                                              )
                                          ),
                                          onPressed: (){},
                                          child: Text('SHOP NOW',style: TextStyle(
                                            color: Color(0xFF00385D),
                                          ),)),
                                    ),
                                  ],
                                )
                            ),
                          ),

                          Align(
                            alignment: Alignment(0.98,-0.50),
                            child: Container(
                                height: 120,width: 120,
                                child: Stack(
                                  children: [
                                    Image.asset('assets/images/NEIWAI.png',color: Colors.white,),
                                    Align(
                                      alignment: Alignment(0.0,0.80),
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              padding: EdgeInsets.only(right:05,left: 05),
                                              textStyle:  TextStyle(fontSize: 15),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.zero
                                              )
                                          ),
                                          onPressed: (){},
                                          child: Text('SHOP NOW',style: TextStyle(
                                            color: Color(0xFF00385D),
                                          ),)),
                                    ),
                                  ],
                                )
                            ),
                          ),


                          Align(
                            alignment: Alignment(-0.98,0.70),
                            child: Container(
                                height: 120,width: 120,
                                child: Stack(
                                  children: [
                                    Image.asset('assets/images/weekendbuddylogo.png',
                                      color: Colors.white,),
                                    Align(
                                      alignment: Alignment(0.0,01.40),
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              padding: EdgeInsets.only(right:05,left: 05),
                                              textStyle:  TextStyle(fontSize: 15),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.zero
                                              )
                                          ),
                                          onPressed: (){},
                                          child: Text('SHOP NOW',style: TextStyle(
                                            color: Color(0xFF00385D),
                                          ),)),
                                    ),
                                  ],
                                )
                            ),
                          ),

                          Align(
                            alignment: Alignment(-0.0,0.90),
                            child: Container(
                                height: 120,width: 150,
                                child: Stack(
                                  children: [
                                    Image.asset('assets/images/SATURDAY TO SUNDAY.png',
                                    ),
                                    Align(
                                      alignment: Alignment(0.0,0.75),
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              padding: EdgeInsets.only(right:05,left: 05),
                                              textStyle:  TextStyle(fontSize: 15),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.zero
                                              )
                                          ),
                                          onPressed: (){},
                                          child: Text('SHOP NOW',style: TextStyle(
                                            color: Color(0xFF00385D),
                                          ),)),
                                    ),
                                  ],
                                )
                            ),
                          ),

                          Align(
                            alignment: Alignment(0.99,0.60),
                            child: Container(
                                height: 110,width: 110,
                                child: Stack(
                                  children: [
                                    Image.asset('assets/images/LGBT.png',color: Colors.white,
                                    ),
                                    Align(
                                      alignment: Alignment(0.0,01.90),
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              padding: EdgeInsets.only(right:05,left: 05),
                                              textStyle:  TextStyle(fontSize: 15),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.zero
                                              )
                                          ),
                                          onPressed: (){},
                                          child: Text('SHOP NOW',style: TextStyle(
                                            color: Color(0xFF00385D),
                                          ),)),
                                    ),
                                  ],
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


//<<<<<<<<<<<<<<<<<<<SIXTH CONTAINER >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                  Align(

                    child: Container(

                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment(0.0,-0.43),
                            child: Divider(
                              thickness: 1,
                              indent: 30,
                              endIndent: 30,
                              color: Colors.black,
                            ),
                          ),
                          Align(
                            alignment: Alignment(0.0,-0.42),
                            child: Text(
                              'Myunde New Arrivals',style: TextStyle(
                                fontSize: 30,fontFamily: 'Bee Leave',color: Colors.red
                            ),
                            ),
                          ),
                          Align(
                            alignment: Alignment(0.0,-0.41),
                            child: Divider(
                              thickness: 1,
                              indent: 30,
                              endIndent: 30,
                              color: Colors.black,
                            ),
                          ),


//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<SIX 2ND CONTAINER>>>>>>>>>>>>>>>>>>>>>>>>>

                          Align(alignment: Alignment(0.0,-0.35),
                            child: Container(
                              height: 510,
                              width: MediaQuery.of(context).size.width*0.90,

                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage("assets/images/abc.png"),
                                    fit: BoxFit.fill
                                ),
                              ),
                              child: Stack(
                                children: [

                                  Align(
                                    child: Container(
                                      height: 270,
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment(-01.50,-05.70),
                                            child: Container(
                                              height: 220,width: 180,
                                              child: InkWell(
                                                onTap: (){},
                                                child: Image.asset("assets/images/1 Brief Inner Elastic-01.png",
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),


                                  Align(
                                    child: Container(
                                      height: 270,
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment(0.0,-05.70),
                                            child: Container(
                                              height: 220,width: 180,
                                              child: InkWell(
                                                onTap: (){},
                                                child: Image.asset("assets/images/1 Brief Outer Elastic-01.png",
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),


                                  Align(
                                    child: Container(
                                      height: 270,
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment(01.50,-05.70),
                                            child: Container(
                                              height: 220,width: 180,
                                              child: InkWell(
                                                onTap: (){},
                                                child: Image.asset( "assets/images/1 fashion Brief-01.png",
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),


                                  Align(
                                    child: Container(
                                      height: 270,
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment(-01.50,03.40),
                                            child: Container(
                                              height: 220,width: 180,
                                              child: InkWell(
                                                onTap: (){},
                                                child: Image.asset( "assets/images/1 boxerBrief-01.png",
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),

                                  Align(
                                    child: Container(
                                      height: 270,
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment(-0.0,03.40),
                                            child: Container(
                                              height: 220,width: 180,
                                              child: InkWell(
                                                onTap: (){},
                                                child: Image.asset( "assets/images/1 boxerBrief-01.png",
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),

                                  Align(
                                    child: Container(
                                      height: 270,
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment(01.50,03.40),
                                            child: Container(
                                              height: 220,width: 180,
                                              child: InkWell(
                                                onTap: (){},
                                                child: Image.asset( "assets/images/1 Fashion Trunk-01.png",
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),


                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(0.0,0.99),
                                    child: Text('The Best Lingerie Like Never Before',style: TextStyle(
                                        fontSize: 19,fontFamily: 'cour',color: Color(0xFF001E3B),
                                        fontWeight: FontWeight.w600
                                    ),),
                                  )
                                ],
                              ),
                            ),
                          ),

//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<SEVENTH CONTAINER>>>>>>>>>>>>>>>>>>>>>>>>>

                          Align(alignment: Alignment(0.0,-0.22),
                            child: Container(
                              height: 180,width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage('https://img.freepik.com/premium-photo/handsome-man-travel-summer-wood-natural-landscape-sunny-outdoors-wearing-plaid-shirt-casual-style-fashion_474717-18607.jpg?w=2000',
                                      ),
                                      fit: BoxFit.cover
                                  )
                              ),
                              child: Stack(
                                children: [
                                  Align(alignment: Alignment(-0.90,-0.80),
                                    child: Text('MAYUNDE',style: TextStyle(
                                        fontFamily: 'Bee Leave',fontSize: 30,color: Color(0xFF001E3B)
                                    ),),
                                  ),
                                  Align(alignment: Alignment(-0.90,-0.40),
                                    child: Text('give a better comfort place',style: TextStyle(
                                        fontFamily: 'Freehand521BT',fontSize: 20.0
                                    ),),
                                  ),
                                  Align(alignment: Alignment(-0.90,0.0),
                                    child: Text('EXPOSE YOUR SMILE WITH US',
                                      style: TextStyle(
                                          fontSize: 15.0,fontWeight: FontWeight.w300
                                      ),
                                    ),
                                  ),



                                  Align(
                                    alignment: Alignment(-0.90,0.50),
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                            backgroundColor: Color(0xFF00385D),
                                            padding: EdgeInsets.only(right:05,left: 05),
                                            textStyle:  TextStyle(fontSize: 15),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.zero
                                            )
                                        ),
                                        onPressed: (){},
                                        child: Text('SHOP NOW',style: TextStyle(
                                            color: Colors.white,fontWeight: FontWeight.w500
                                        ),)),
                                  )
                                ],
                              ),
                            ),
                          ),


//<<<<<<<<<<<<<<<<<<<<<<<<<EIGHT CONTAINER>>>>>>>>>>>>>>>>>>>>>>>

                          Align(alignment: Alignment(0.0,-0.16),
                            child: Container(
                              height: 230,width: MediaQuery.of(context).size.width,
                              color: Colors.transparent,
                              child: Stack(
                                children: [
                                  Align(alignment: Alignment(0.0,-0.94),
                                    child: Text('Crafted with super soft fabric just for you',style: TextStyle(
                                        fontFamily: 'ComicSansMS3',fontSize: 18
                                    ),
                                    ),
                                  ),

                                  Align(
                                    child: Container(
                                      height: 250,
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment(-0.80,-0.10),
                                            child: Container(
                                              height: 150,width: 150,
                                              child: Image.network('https://cdn.shopify.com/s/files/1/0245/1138/1585/products/21BBX47362_3.jpg?v=1647864134',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment(-0.60,0.99),
                                            child: Text('Boxer Shots',style: TextStyle(
                                                fontFamily: 'Monea Alegante',fontSize: 22.0,fontWeight: FontWeight.w600
                                            ),),
                                          ),
                                          Align(
                                            alignment: Alignment(-0.60,0.75),
                                            child: TextButton(
                                                style: TextButton.styleFrom(
                                                    backgroundColor: Color(0xFF00385D),
                                                    padding: EdgeInsets.only(right:05,left: 05),
                                                    textStyle:  TextStyle(fontSize: 10),
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.zero
                                                    )
                                                ),
                                                onPressed: (){},
                                                child: Text('SHOP NOW',style: TextStyle(
                                                    color: Colors.white,fontWeight: FontWeight.w600
                                                ),)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),

                                  Align(
                                    child: Container(
                                      height: 250,
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment(0.80,-0.10),
                                            child: Container(
                                              height: 150,width: 150,
                                              child: Image.network('https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/6555071/2022/5/12/6ee0cd3b-b271-4d1f-86e1-74db77b7f0df1652337660451-HRX-by-Hrithik-Roshan-Men-White-Raglan-Sleeved-T-shirt-27116-1.jpg',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment(0.75,0.99),
                                            child: Text('PLAIN T-SHIRT',style: TextStyle(
                                                fontFamily: 'Monea Alegante',fontSize: 22.0,fontWeight: FontWeight.w600
                                            ),),
                                          ),
                                          Align(
                                            alignment: Alignment(0.60,0.75),
                                            child: TextButton(
                                                style: TextButton.styleFrom(
                                                    backgroundColor: Color(0xFF00385D),
                                                    padding: EdgeInsets.only(right:05,left: 05),
                                                    textStyle:  TextStyle(fontSize: 10),
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.zero
                                                    )
                                                ),
                                                onPressed: (){},
                                                child: Text('SHOP NOW',style: TextStyle(
                                                    color: Colors.white,fontWeight: FontWeight.w600
                                                ),)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  //<<<<<<<<<<<<<<<<<<<<<<<<<<NINE CONTAINER>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                  Align(
                    alignment: Alignment(0.0,-0.09),
                    child: Container(
                        height: 230,width: MediaQuery.of(context).size.width,
                        color: Colors.transparent,
                        child: IconButton(
                          icon: Image.asset("assets/images/Website scroll 11.png",
                            fit: BoxFit.cover,height: 160,),
                          iconSize: 100,
                          onPressed: () {},
                        )
                    ),
                  ),


//<<<<<<<<<<<<<<<<<<<<<<<TEN CONTAINER>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                  Align(alignment: Alignment(0.0,-0.03),
                    child: Container(
                        height: 250,width: MediaQuery.of(context).size.width,
                        color: Colors.transparent,
                        child: IconButton(
                          icon: Image.asset("assets/images/Website scroll 12.png",
                              fit: BoxFit.cover),
                          iconSize: 200,
                          onPressed: () {},
                        )
                    ),
                  ),


//<<<<<<<<<<<<<<< 11 CONTAINER >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                  Align(
                    alignment: Alignment(0.0,0.04),
                    child: Container(
                      height: 240,width: MediaQuery.of(context).size.width,
                      color: Color(0xFF10DCDC),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment(0.0,-0.99),
                            child: Text('Myunde Presents being lightweight',style:TextStyle(
                                fontFamily: 'Monea Alegante',fontSize: 25
                            ),),
                          ),
                          Align(
                            alignment: Alignment(0.0,-0.78),
                            child: Text('ACTIVEWEAR | SLEEPWEAR',style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.w400
                            ),),
                          ),


                          Align(
                            child: Container(
                              height: 250,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-01.20,01.90),
                                    child: Container(
                                      height: 220,width: 180,
                                      child: InkWell(
                                        onTap: (){},
                                        child: Image.asset( "assets/images/1 Pyjama.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),


                          Align(
                            child: Container(
                              height: 250,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.0,01.90),
                                    child: Container(
                                      height: 220,width: 180,
                                      child: InkWell(
                                        onTap: (){},
                                        child: Image.asset( "assets/images/1 Pyjama 2-01.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),


                          Align(
                            child: Container(
                              height: 250,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(01.20,01.90),
                                    child: Container(
                                      height: 220,width: 180,
                                      child: InkWell(
                                        onTap: (){},
                                        child: Image.asset( "assets/images/1 Pyjama 3-01.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),


                  //<<<<<<<<<<<<<<<<<<<  12 CONTAINER >>>>>>>>>>>>>>>>>>>>>>>>>

                  Align(
                    alignment: Alignment(0.0,0.13),
                    child: Container(
                      color: Colors.transparent,
                      height: 280,width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment(0.0,-0.99),
                            child: Text('get ready for show your manly',style: TextStyle(
                                fontFamily: 'Daviton DEMO',fontSize: 35
                            ),),
                          ),


                          Align(
                            child: Container(
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.80,-0.13),
                                    child: Container(
                                      height: 180,width: 120,
                                      child: Image.network('https://www.beyoung.in/api/cache/catalog/products/cargo_joggers/khaki_brown_cargo_jogger_pants_base_400x533.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(-0.72,0.79),
                                      child: Text('Jogger',style: TextStyle(fontFamily: 'Monea Alegante',
                                          fontSize: 33.0,fontWeight: FontWeight.w500
                                      ),)
                                  ),
                                  Align( alignment: Alignment(-0.74,0.95),
                                    child: Text('MIN - 20% OFF',style: TextStyle(
                                        fontSize: 17.0,fontFamily: 'Acumin Variable Concept',fontWeight: FontWeight.bold
                                    ),),
                                  )
                                ],
                              ),
                            ),
                          ),


                          Align(
                            child: Container(
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(0.75,-0.13),
                                    child: Container(
                                      height: 180,width: 120,
                                      child: Image.network('https://static.thcdn.com/productimg/1600/1600/12763047-1324868196253299.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Align(alignment: Alignment(0.75,0.79),
                                      child: Text('Track pant',style: TextStyle(fontFamily: 'Monea Alegante',
                                          fontSize: 28.0,fontWeight: FontWeight.w500
                                      ),)
                                  ),
                                  Align( alignment: Alignment(0.74,0.90),
                                    child: Text('UPTO 30-40% OFF',style: TextStyle(
                                        fontSize: 14.0,fontFamily: 'Acumin Variable Concept'
                                        ,fontWeight: FontWeight.bold
                                    ),),
                                  )
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),


                  //<<<<<<<<<<<<<<<<<<<<   13 CONTAINER >>>>>>>>>>>>>>>>>


                  Align(
                    alignment: Alignment(0.0,0.21),
                    child: Container(
                        height: 240,width: MediaQuery.of(context).size.width,
                        color: Colors.transparent,
                        child: IconButton(
                          icon: Image.asset("assets/images/Website scroll 15.png",
                              fit: BoxFit.cover),
                          iconSize: 200,
                          onPressed: () {},
                        )
                    ),
                  ),


                  //<<<<<<<<<<<<<  14 CONTAINER >>>>>>>>>>>>>>>>>>>>>>>>

                  Align(
                    alignment: Alignment(0.0,0.30),
                    child: Container(
                      height: 240,width: MediaQuery.of(context).size.width,
                      color: Colors.transparent,
                      child: Stack(
                        children: [

                          Align(
                            child: Container(
                              height: 250,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(0.0,-01.40),
                                    child: Text('Look perfect from every angle',style: TextStyle(
                                        fontFamily: 'BellGothicStd-Black',fontSize: 28.0
                                    ),),
                                  ),
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 160,width: 120,
                                      child: Image.network('https://rukminim1.flixcart.com/image/800/800/k251k7k0/brief/y/f/h/m-nb19053pf-calvin-klein-underwear-original-imafhgspuq4wfp89.jpeg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment(-0.90,0.5),
                                    child: Text('White Vest',style: TextStyle(
                                        fontFamily: 'Monea Alegante',fontSize: 20.0
                                    ),),
                                  ),
                                  Align(
                                    alignment: Alignment(-0.85,0.90),
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                            backgroundColor: Color(0xFF00385D),
                                            padding: EdgeInsets.only(right:05,left: 05),
                                            textStyle:  TextStyle(fontSize: 10),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.zero
                                            )
                                        ),
                                        onPressed: (){},
                                        child: Text('SHOP NOW',style: TextStyle(
                                            color: Colors.white,fontWeight: FontWeight.w600
                                        ),)),
                                  )
                                ],
                              ),
                            ),
                          ),


                          Align(
                            child: Container(
                              height: 250,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(0.0,-0.99),
                                    child: Container(
                                      height: 160,width: 120,
                                      child: Image.network('https://www.menandunderwear.com/wp-content/uploads/2019/07/Code-22-underwear-Basic-Briefs-03.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment(0.0,0.50),
                                    child: Text('Gym Vest',style: TextStyle(
                                        fontFamily: 'Monea Alegante',fontSize: 20.0
                                    ),),
                                  ),
                                  Align(
                                    alignment: Alignment(0.0,0.90),
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                            backgroundColor: Color(0xFF00385D),
                                            padding: EdgeInsets.only(right:05,left: 05),
                                            textStyle:  TextStyle(fontSize: 10),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.zero
                                            )
                                        ),
                                        onPressed: (){},
                                        child: Text('SHOP NOW',style: TextStyle(
                                            color: Colors.white,fontWeight: FontWeight.w600
                                        ),)),
                                  )
                                ],
                              ),
                            ),
                          ),


                          Align(
                            child: Container(
                              height: 250,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(0.99,-0.99),
                                    child: Container(
                                      height: 160,width: 120,
                                      child: Image.network('https://cdn.shopify.com/s/files/1/0231/1448/1744/products/1_6dee3872-e46d-437e-929c-2596450457e1_1200x.jpg?v=1654857470',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment(0.80,0.50),
                                    child: Text('TankTop',style: TextStyle(
                                        fontFamily: 'Monea Alegante',fontSize: 20.0
                                    ),),
                                  ),
                                  Align(
                                    alignment: Alignment(0.85,0.90),
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                            backgroundColor: Color(0xFF00385D),
                                            padding: EdgeInsets.only(right:05,left: 05),
                                            textStyle:  TextStyle(fontSize: 10),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.zero
                                            )
                                        ),
                                        onPressed: (){},
                                        child: Text('SHOP NOW',style: TextStyle(
                                            color: Colors.white,fontWeight: FontWeight.w600
                                        ),)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //<<<<<<<<<<<<< 15 CONTAINER>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                  Align(
                    alignment: Alignment(0.0,0.38),
                    child: Container(
                        height: 240,width: MediaQuery.of(context).size.width,
                        color: Colors.transparent,
                        child: IconButton(
                          icon: Image.asset("assets/images/Website scroll 17.png",
                              fit: BoxFit.cover),
                          iconSize: 200,
                          onPressed: () {},
                        )
                    ),
                  ),


//<<<<<<<<<<<<<< 16 CONTAINER >>>>>>>>>>>>>>>>>>>>>>>>>>

                  Align(
                    alignment: Alignment(0.0,0.45),
                    child: Container(
                        height: 240,width: MediaQuery.of(context).size.width,
                        color: Colors.transparent,
                        child: IconButton(
                          icon: Image.asset("assets/images/Website scroll 18.png",
                              fit: BoxFit.cover),
                          iconSize: 200,
                          onPressed: () {},
                        )
                    ),
                  ),

//<<<<<<<<<<<<<< 17 CONTAINER >>>>>>>>>>>>>>>>>>>>>>>>>>

                  Align(
                    alignment: Alignment(0.0,0.51),
                    child: Container(
                      height: 220,width: MediaQuery.of(context).size.width*0.95,
                      color: Color(0xFF00385D),
                      child: Stack(
                        children: [
                          Align(alignment: Alignment(-0.99,0.0),
                            child: Container(
                              margin: EdgeInsets.all(20.0),
                              child: Image.asset("assets/images/1 Website scroll 19 (4).png"),
                            ),
                          ),


                          Align(
                            alignment: Alignment(-0.70,-0.20),
                            child: Container(
                              height:50,
                              child: InkWell(
                                onTap: (){},
                                child: Image.asset("assets/images/1 Website scroll 19 (3) 2.png",
                                ),
                              ),
                            ),
                          ),


                          Align(
                            alignment: Alignment(-0.0,0.70),
                            child: Container(
                              height: 80,
                              child: InkWell(
                                onTap: (){},
                                child: Image.asset("assets/images/1 Website scroll 19 (2)-01.png",
                                ),
                              ),
                            ),
                          ),


                          Align(
                            alignment: Alignment(0.80,-0.20),
                            child: Container(
                              height: 80,
                              child: InkWell(
                                onTap: (){},
                                child: Image.asset("assets/images/1 Website scroll 19 (3)-01.png",
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),


//<<<<<<<<<<<<<< 18 CONTAINER >>>>>>>>>>>>>>>>>>>>>>>>>>

                  Align(
                    alignment: Alignment(0.0,0.58),
                    child: Container(
                        height: 240,width: MediaQuery.of(context).size.width,
                        color: Colors.transparent,
                        child: IconButton(
                          icon: Image.asset("assets/images/Website scroll 20.png",
                              fit: BoxFit.cover),
                          iconSize: 200,
                          onPressed: () {},
                        )
                    ),
                  ),


//<<<<<<<<<<<<< 19 CONTAINER >>>>>>>>>>>>>>>>>>


                  Align(
                    alignment: Alignment(0.0,0.66),
                    child: Container(
                      height: 240,width: MediaQuery.of(context).size.width,
                      color: Colors.transparent,
                      child: Stack(
                        children: [

                          Align(
                            child: Container(
                              height: 250,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-0.99,-0.99),
                                    child: Container(
                                      height: 160,width: 120,
                                      child: Image.asset('assets/images/Socks 1.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment(-0.90,0.5),
                                    child: Text('Above ankle',style: TextStyle(
                                        fontFamily: 'Monea Alegante',fontSize: 20.0
                                    ),),
                                  ),
                                  Align(
                                    alignment: Alignment(-0.85,0.90),
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                            backgroundColor: Color(0xFF00385D),
                                            padding: EdgeInsets.only(right:05,left: 05),
                                            textStyle:  TextStyle(fontSize: 10),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.zero
                                            )
                                        ),
                                        onPressed: (){},
                                        child: Text('SHOP NOW',style: TextStyle(
                                            color: Colors.white,fontWeight: FontWeight.w600
                                        ),)),
                                  )
                                ],
                              ),
                            ),
                          ),


                          Align(
                            child: Container(
                              height: 250,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(0.0,-0.99),
                                    child: Container(
                                      height: 160,width: 120,
                                      child: Image.asset('assets/images/Socks 2.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment(0.0,0.50),
                                    child: Text('Calf length',style: TextStyle(
                                        fontFamily: 'Monea Alegante',fontSize: 20.0
                                    ),),
                                  ),
                                  Align(
                                    alignment: Alignment(0.0,0.90),
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                            backgroundColor: Color(0xFF00385D),
                                            padding: EdgeInsets.only(right:05,left: 05),
                                            textStyle:  TextStyle(fontSize: 10),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.zero
                                            )
                                        ),
                                        onPressed: (){},
                                        child: Text('SHOP NOW',style: TextStyle(
                                            color: Colors.white,fontWeight: FontWeight.w600
                                        ),)),
                                  )
                                ],
                              ),
                            ),
                          ),


                          Align(
                            child: Container(
                              height: 250,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(0.99,-0.99),
                                    child: Container(
                                      height: 160,width: 120,
                                      child: Image.asset('assets/images/Socks 3.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment(0.85,0.50),
                                    child: Text('Shoe Liner',style: TextStyle(
                                        fontFamily: 'Monea Alegante',fontSize: 20.0
                                    ),),
                                  ),
                                  Align(
                                    alignment: Alignment(0.80,0.90),
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                            backgroundColor: Color(0xFF00385D),
                                            padding: EdgeInsets.only(right:05,left: 05),
                                            textStyle:  TextStyle(fontSize: 10),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.zero
                                            )
                                        ),
                                        onPressed: (){},
                                        child: Text('SHOP NOW',style: TextStyle(
                                            color: Colors.white,fontWeight: FontWeight.w600
                                        ),)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


//<<<<<<<<<<<<<<<< 20 CONTAINER >>>>>>>>>>>>>>>>>>>>>>


                  Align(
                    alignment: Alignment(0.0,0.99),
                    child: Container(
                      height: 600,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [

                          Align(
                            alignment: Alignment(-0.99,-04.0),
                            child: Container(
                              height: 280,width: MediaQuery.of(context).size.width*0.50,
                              color: Colors.transparent,
                              child: Image.asset("assets/images/text png.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),


                          Align(
                            alignment: Alignment(-0.99,-02.00),
                            child: Container(
                              height: 280,width: MediaQuery.of(context).size.width*0.50,
                              color: Colors.transparent,
                              child: Image.asset("assets/images/text png 2.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),







                          Align(
                            alignment: Alignment(0.0,-0.35),
                            child: Container(
                              height: 140,width: 400,
                              color: Colors.white,

                              child: Stack(
                                children: [
                                  Align(
                                    child: Divider(
                                      thickness: 1,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Align(
                                      alignment: Alignment(-0.99,-0.99),
                                      child: Container(
                                          height: 70,width: 200,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.grey)
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(

                                                child:  Container(
                                                  width: 200.0,
                                                  height: 100.0,
                                                  child: OutlinedButton.icon( // <-- OutlinedButton
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.card_giftcard,color: Colors.grey,
                                                      size: 30.0,
                                                    ),
                                                    label: Text('        DISCREET \n        PACKAGING',style: TextStyle(
                                                      color: Colors.grey,
                                                    ),),
                                                  ),
                                                ),
                                              ),

                                            ],
                                          )
                                      )
                                  ),



                                  Align(
                                      alignment: Alignment(0.99,-0.99),
                                      child: Container(
                                          height: 70,width: 200,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.grey)
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(

                                                child:  Container(
                                                  width: 200.0,
                                                  height: 100.0,
                                                  child: OutlinedButton.icon( // <-- OutlinedButton
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.watch_later_outlined,color: Colors.grey,
                                                      size: 30.0,
                                                    ),
                                                    label: Text('      DISPATCH \n      WITHIN 24HRS',style: TextStyle(
                                                      color: Colors.grey,
                                                    ),),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                      )
                                  ),



                                  Align(
                                      alignment: Alignment(0.99,0.99),
                                      child: Container(
                                          height: 70,width: 400,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.grey)
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(

                                                child:  Container(
                                                  width: 400.0,
                                                  height: 100.0,
                                                  child: OutlinedButton.icon( // <-- OutlinedButton
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.replay,color: Colors.grey,
                                                      size: 30.0,
                                                    ),
                                                    label: Text('      15 DAYS EASY \n      RETURNS & EXCHANGE',style: TextStyle(
                                                      color: Colors.grey,
                                                    ),),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                      )
                                  )

                                ],
                              ),
                            ),
                          ),



//<<<<<<<<<<<<<<<<<<<21 CONTAINER >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                          Align(
                            alignment: Alignment(-0.99,0.30),
                            child: Text(
                              'REGISTERED OFFICE ADDRESS: \n\nWebtek Fashion Pvt Ltd\n1St Floor, MK plaza, Thoppu Thottam,\nSolipalayam Road, 15 velampalayam,\nTirupur 641652.',
                              style: TextStyle(
                                  fontFamily: 'Myriad Pro Regular',fontWeight: FontWeight.w600,fontSize: 13
                              ),
                            ),
                          ),

                          Align(
                            alignment: Alignment(0.99,0.30),
                            child: Container(
                              height: 130,width: 195,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment:Alignment(-0.80,-0.99),
                                    child: TextButton.icon(     // <-- TextButton
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.call,color: Colors.black,
                                        size: 20.0,
                                      ),
                                      label: Text(':+91 9321136444',style: TextStyle(
                                          color: Colors.black,fontSize: 15
                                      ),),
                                    ),
                                  ),


                                  Align(
                                    alignment:Alignment(0.0,-0.30),
                                    child: TextButton.icon(     // <-- TextButton
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.mail,color: Colors.black,
                                        size: 20.0,
                                      ),
                                      label: Text(': feedback@myunde.com',style: TextStyle(
                                          color: Colors.black,fontSize: 12
                                      ),),
                                    ),
                                  ),

                                  Align(
                                    child: Container(
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment(-0.88,0.25),
                                            child: Image.network('https://img.icons8.com/ios/344/globe--v1.png',
                                              height: 20,width: 20,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment(0.13,0.25),
                                            child: Text(': www.myunde.com',style: TextStyle(
                                              fontSize: 14,
                                            ),),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),

                          Align(
                            alignment: Alignment(0.0,0.50),
                            child: Divider(
                              thickness: 1,
                              color: Colors.black,
                            ),
                          ),

                          Align(
                              alignment: Alignment(0.0,0.73),
                              child: Container(
                                height: 80,width: 420,
                                child: Image.asset("assets/images/PAYMENT.png"),
                              )
                          ),
                          Align(
                            alignment: Alignment(0.0,0.83),
                            child: Divider(
                              thickness: 1,
                              color: Colors.black,
                            ),
                          ),

//<<<<<<<<<<<<<<<<<<< 22 CONTAINER >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                          Align( alignment: Alignment(0.12,0.97),
                            child: Container(
                              height: 50,width: 250,

                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment(-01.40,0.0),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Image.network("https://img.icons8.com/material-outlined/344/facebook-f.png",
                                          height: 20,width: 20,
                                        )
                                    ),
                                  ),




                                  Align(
                                    alignment: Alignment(-0.99,0.0),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Image.network("https://img.icons8.com/material-sharp/344/twitter.png",
                                          height: 20,width: 20,
                                        )
                                    ),
                                  ),




                                  Align(
                                    alignment: Alignment(-0.60,0.0),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Image.network("https://img.icons8.com/fluency-systems-filled/344/youtube.png",
                                          height: 20,width: 20,
                                        )
                                    ),
                                  ),



                                  Align(
                                    alignment: Alignment(-0.22,0.0),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Image.network("https://img.icons8.com/ios/344/google-plus.png",
                                          height: 20,width: 20,
                                        )
                                    ),
                                  ),



                                  Align(
                                    alignment: Alignment(0.14,0.0),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Image.network("https://img.icons8.com/windows/344/pinterest-p.png",
                                          height: 20,width: 20,
                                        )
                                    ),
                                  ),


                                  Align(
                                    alignment: Alignment(0.47,0.0),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Image.network("https://img.icons8.com/ios-glyphs/344/instagram-new.png",
                                          height: 20,width: 20,
                                        )
                                    ),
                                  ),




                                  Align(
                                    alignment: Alignment(0.85,0.0),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.camera,size: 20,
                                        )
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment(-0.22,0.95),
                                    child: Text("FOLLOW US",
                                      style: TextStyle(
                                          fontSize: 10.0
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )






                        ],
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
