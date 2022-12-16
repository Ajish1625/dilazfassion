import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Explore(),
//   ));
// }

class offers_page extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<offers_page> {

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

  int counter = 0;



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
              height: 2700,width: MediaQuery.of(context).size.width,

              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("assets/images/Website Background 500.3000.png"),
                    fit: BoxFit.cover
                ),
              ),

              child: Stack(
                children: [

//<<<<<<<<<<<<<<<<<<<<< 1 card >>>>>>>>>>>>>>>>>>>>>

                  Align(
                    alignment: Alignment(0.0,-0.99),
                    child: Container(
                      color: Colors.transparent,
                      child: Container(
                        height: 250.0,

                        child: PageIndicatorContainer(

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
                          shape: IndicatorShape.circle(size: 08),
                        ),
                      ),
                    ),

                  ),

//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< 2 card >>>>>>>>>>>>>>>>>>>>>>>>>>>>

                  Align(
                    alignment: Alignment(0.0,-0.77),
                    child: Container(
                      color: Colors.transparent,
                      child: Container(
                        height: 250.0,

                        child: PageIndicatorContainer(
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
                          shape: IndicatorShape.circle(size: 08),
                        ),
                      ),
                    ),

                  ),

//<<<<<<<<<<<<<<<<<<< 3 card >>>>>>>>>>>>>>>>>>>>>>>>

                  Align(
                    alignment: Alignment(0.0,-0.55),
                    child: Container(
                      color: Colors.transparent,
                      child: Container(
                        height: 250.0,

                        child: PageIndicatorContainer(

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
                          shape: IndicatorShape.circle(size: 08),
                        ),
                      ),
                    ),

                  ),

//<<<<<<<<<<<<<<<<<<< 4 card >>>>>>>>>>>>>>>>>>>>>>>>

                  Align(
                    alignment: Alignment(0.0,-0.33),
                    child: Container(
                      color: Colors.transparent,
                      child: Container(
                        height: 250.0,

                        child: PageIndicatorContainer(

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
                          shape: IndicatorShape.circle(size: 08),
                        ),
                      ),
                    ),

                  ),


//<<<<<<<<<<<<<<<<<<< 5 card >>>>>>>>>>>>>>>>>>>>>>>>

                  Align(
                    alignment: Alignment(0.0,-0.12),
                    child: Container(
                      color: Colors.transparent,
                      child: Container(
                        height: 250.0,

                        child: PageIndicatorContainer(

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
                          shape: IndicatorShape.circle(size: 08),
                        ),
                      ),
                    ),

                  ),

//<<<<<<<<<<<<<<<<<<< 6 card >>>>>>>>>>>>>>>>>>>>>>>>

                  Align(
                    alignment: Alignment(0.0,0.09),
                    child: Container(
                      color: Colors.transparent,
                      child: Container(
                        height: 250.0,

                        child: PageIndicatorContainer(

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
                          shape: IndicatorShape.circle(size: 08),
                        ),
                      ),
                    ),

                  ),

//<<<<<<<<<<<<<<<<<<< 7 card >>>>>>>>>>>>>>>>>>>>>>>>

                  Align(
                    alignment: Alignment(0.0,0.30),
                    child: Container(
                      color: Colors.transparent,
                      child: Container(
                        height: 250.0,

                        child: PageIndicatorContainer(

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
                          shape: IndicatorShape.circle(size: 08),
                        ),
                      ),
                    ),

                  ),

//<<<<<<<<<<<<<<<<<<< 8 card >>>>>>>>>>>>>>>>>>>>>>>>

                  Align(
                    alignment: Alignment(0.0,0.51),
                    child: Container(
                      color: Colors.transparent,
                      child: Container(
                        height: 250.0,

                        child: PageIndicatorContainer(

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
                          shape: IndicatorShape.circle(size: 08),
                        ),
                      ),
                    ),

                  ),

//<<<<<<<<<<<<<<<<<<< 9 card >>>>>>>>>>>>>>>>>>>>>>>>

                  Align(
                    alignment: Alignment(0.0,0.72),
                    child: Container(
                      color: Colors.transparent,
                      child: Container(
                        height: 250.0,

                        child: PageIndicatorContainer(

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
                          shape: IndicatorShape.circle(size: 08),
                        ),
                      ),
                    ),

                  ),

//<<<<<<<<<<<<<<<<<<< 10 card >>>>>>>>>>>>>>>>>>>>>>>>

                  Align(
                    alignment: Alignment(0.0,0.93),
                    child: Container(
                      color: Colors.transparent,
                      child: Container(
                        height: 250.0,

                        child: PageIndicatorContainer(

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
                          shape: IndicatorShape.circle(size: 08),
                        ),
                      ),
                    ),

                  ),



                ],
              ),









            )
          ],
        ),
      )
    );
  }
}