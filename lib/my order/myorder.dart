import 'package:demodezi/my%20order/order_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Explore(),
//   ));
// }

class myorder extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<myorder> {

  bool Clicked1 = false;
  bool Clicked2 = false;
  bool Clicked3 = false;

  void showfilter() {
    showModalBottomSheet<void> (

        context: context,
        builder: (BuildContext context) {
          return Container (
            height: 400,

            child: Stack(

              children: <Widget> [

                Align(alignment: Alignment(-0.99,-0.99),
                  child: Text('Filters',style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold
                  ),),
                ),

                Align(alignment: Alignment(-0.95,-0.80),
                  child: Text('Order Status',style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),

                ),


                Align(alignment: Alignment(-0.70,-0.60),
                child: Container(
                    height: 30,width: 100,
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          Clicked1 = !Clicked1;
                          Clicked2 = false;
                          Clicked3= false;
                        });
                      },
                      child: Container(
                        child: Center(child: Text('On the way',style: TextStyle(fontWeight: FontWeight.bold),)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.black),
                          color: Clicked1? Colors.blue.withOpacity(0.8)
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),



                Align(alignment: Alignment(0.10,-0.60),
                  child: Container(
                    height: 30,width: 100,
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          Clicked1 = !Clicked1;
                          Clicked2 = false;
                          Clicked3= false;
                        });
                      },
                      child: Container(
                        child: Center(child: Text('Delevered',style: TextStyle(fontWeight: FontWeight.bold),)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.black),
                          color: Clicked1? Colors.blue.withOpacity(0.8)
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),



                Align(alignment: Alignment(-0.70,-0.30),
                  child: Container(
                    height: 30,width: 100,
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          Clicked1 = !Clicked1;
                          Clicked2 = false;
                          Clicked3= false;
                        });
                      },
                      child: Container(
                        child: Center(child: Text('Cancelled',style: TextStyle(fontWeight: FontWeight.bold),)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.black),
                          color: Clicked1? Colors.blue.withOpacity(0.8)
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),



                Align(alignment: Alignment(0.10,-0.30),
                  child: Container(
                    height: 30,width: 100,
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          Clicked1 = !Clicked1;
                          Clicked2 = false;
                          Clicked3= false;
                        });
                      },
                      child: Container(
                        child: Center(child: Text('Returned',style: TextStyle(fontWeight: FontWeight.bold),)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.black),
                          color: Clicked1? Colors.blue.withOpacity(0.8)
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),


                Align(alignment: Alignment(-0.95,-0.0),
                  child: Text('Order Time',style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
                ),



                Align(alignment: Alignment(-0.70,0.30),
                  child: Container(
                    height: 30,width: 120,
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          Clicked1 = !Clicked1;
                          Clicked2 = false;
                          Clicked3= false;
                        });
                      },
                      child: Container(
                        child: Center(child: Text('Last 30 days',style: TextStyle(fontWeight: FontWeight.bold),)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.black),
                          color: Clicked1? Colors.blue.withOpacity(0.8)
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),




                Align(alignment: Alignment(0.20,0.30),
                  child: Container(
                    height: 30,width: 100,
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          Clicked1 = !Clicked1;
                          Clicked2 = false;
                          Clicked3= false;
                        });
                      },
                      child: Container(
                        child: Center(child: Text('Older',style: TextStyle(fontWeight: FontWeight.bold),)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.black),
                          color: Clicked1? Colors.blue.withOpacity(0.8)
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.0,0.60),
                  child: Divider(
                    indent: 10,
                    endIndent: 10,
                  ),
                ),

                Align(
                  alignment: Alignment(-0.85,0.90),
                child: TextButton(
                  onPressed: (){},
                  child: Container(
                    height: 50,width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey)
                    ),
                    child: Center(child: Text('Cancel',style: TextStyle(
                      fontSize: 15.0
                    ),)),
                  ),
                ),
                ),
                Align(
                  alignment: Alignment(0.85,0.85),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange
                    ),
                    child: Container(
                      height: 50,width: 150,
                      child: Center(
                        child: Text('Apply',style: TextStyle(color: Colors.white),
                        ),
                      ),
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

              height: MediaQuery.of(context).size.height*02.80,
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

                  Align(
                    alignment: Alignment(-0.85,-0.99),
                    child: Container(
                      height: 100,width: 300,
                      child: TextField(
                        decoration:  InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.greenAccent, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red, width: 1.0),
                            ),
                            hintText: 'Search your order here',
                          hintStyle: TextStyle(color: Colors.grey)
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ], // Only numbers can be entered
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment(0.90,-0.99),
                    child: TextButton.icon(
                      onPressed: showfilter,
                      icon: Icon(Icons.filter_list,color: Colors.black,),
                      label: Text('Filters',style: TextStyle(color: Colors.black),),
                    )
                  ),



 //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<HISTORY PAGES >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                  Align(
                    alignment: Alignment(0.0,-0.90),
                    child: GestureDetector(
                      onTap: (){
                        print("clicked");

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  order_detail()),
                        );

                      },
                      child: Card(
                        child: Container(
                          height: 150,width: 410,
                          color: Colors.transparent,
                          child: Stack(
                            children: [

                              Align(
                                alignment: Alignment(-0.99,-0.80),
                                child: Container(
                                  height: 240,width: 220,
                                       child: IconButton(
                                          onPressed: () {

                                          },
                                          icon: Image.asset("assets/images/slide-1.png",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                ),
                              ),
                              Align(alignment: Alignment(0.40,-0.70),
                                child: Text('Deliverd on ',style: TextStyle(fontFamily: 'cambriab'),),
                              ),

                              Align(
                                alignment: Alignment(0.50,-0.20),
                                child: Text('PRODUCT NAME',style: TextStyle(
                                    fontFamily: 'Acumin Variable Concept',color: Colors.black,
                                    fontSize: 13.0
                                ),),
                              ),

                              Align(
                                alignment: Alignment(0.95,-0.70),
                                child: Icon(
                                  Icons.arrow_forward_ios,size: 15.0,
                                ),



                              ),

                              Align(
                                alignment: Alignment(0.85,0.50),

                                  child: RatingBar.builder(

                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 27.0,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),




                  Align(
                    alignment: Alignment(0.0,-0.76),
                    child: GestureDetector(
                      onTap: (){
                        print("clicked");
                      },
                      child: Card(
                        child: Container(
                          height: 150,width: 410,
                          color: Colors.transparent,
                          child: Stack(
                            children: [

                              Align(
                                alignment: Alignment(-0.99,-0.80),
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
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                              ),
                              Align(alignment: Alignment(0.40,-0.70),
                                child: Text('Deliverd on ',style: TextStyle(fontFamily: 'cambriab'),),
                              ),

                              Align(
                                alignment: Alignment(0.50,-0.20),
                                child: Text('PRODUCT NAME',style: TextStyle(
                                    fontFamily: 'Acumin Variable Concept',color: Colors.black,
                                    fontSize: 13.0
                                ),),
                              ),

                              Align(
                                alignment: Alignment(0.95,-0.70),
                                child: Icon(
                                  Icons.arrow_forward_ios,size: 15.0,
                                ),



                              ),

                              Align(
                                alignment: Alignment(0.85,0.50),

                                child: RatingBar.builder(

                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 27.0,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),



                  Align(
                    alignment: Alignment(0.0,-0.59),
                    child: GestureDetector(
                      onTap: (){
                        print("clicked");
                      },
                      child: Card(
                        child: Container(
                          height: 150,width: 410,
                          color: Colors.transparent,
                          child: Stack(
                            children: [

                              Align(
                                alignment: Alignment(-0.99,-0.80),
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
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                              ),
                              Align(alignment: Alignment(0.40,-0.70),
                                child: Text('Deliverd on ',style: TextStyle(fontFamily: 'cambriab'),),
                              ),

                              Align(
                                alignment: Alignment(0.50,-0.20),
                                child: Text('PRODUCT NAME',style: TextStyle(
                                    fontFamily: 'Acumin Variable Concept',color: Colors.black,
                                    fontSize: 13.0
                                ),),
                              ),

                              Align(
                                alignment: Alignment(0.95,-0.70),
                                child: Icon(
                                  Icons.arrow_forward_ios,size: 15.0,
                                ),



                              ),

                              Align(
                                alignment: Alignment(0.85,0.50),

                                child: RatingBar.builder(

                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 27.0,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),



                  Align(
                    alignment: Alignment(0.0,-0.42),
                    child: GestureDetector(
                      onTap: (){
                        print("clicked");
                      },
                      child: Card(
                        child: Container(
                          height: 150,width: 410,
                          color: Colors.transparent,
                          child: Stack(
                            children: [

                              Align(
                                alignment: Alignment(-0.99,-0.80),
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
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                              ),
                              Align(alignment: Alignment(0.40,-0.70),
                                child: Text('Deliverd on ',style: TextStyle(fontFamily: 'cambriab'),),
                              ),

                              Align(
                                alignment: Alignment(0.50,-0.20),
                                child: Text('PRODUCT NAME',style: TextStyle(
                                    fontFamily: 'Acumin Variable Concept',color: Colors.black,
                                    fontSize: 13.0
                                ),),
                              ),

                              Align(
                                alignment: Alignment(0.95,-0.70),
                                child: Icon(
                                  Icons.arrow_forward_ios,size: 15.0,
                                ),



                              ),

                              Align(
                                alignment: Alignment(0.85,0.50),

                                child: RatingBar.builder(

                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 27.0,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),



                  Align(
                    alignment: Alignment(0.0,-0.25),
                    child: GestureDetector(
                      onTap: (){
                        print("clicked");
                      },

                      child: Card(
                        child: Container(
                          height: 150,width: 410,
                          color: Colors.transparent,
                          child: Stack(
                            children: [

                              Align(
                                alignment: Alignment(-0.99,-0.80),
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
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                              ),
                              Align(alignment: Alignment(0.40,-0.70),
                                child: Text('Deliverd on ',style: TextStyle(fontFamily: 'cambriab'),),
                              ),

                              Align(
                                alignment: Alignment(0.50,-0.20),
                                child: Text('PRODUCT NAME',style: TextStyle(
                                    fontFamily: 'Acumin Variable Concept',color: Colors.black,
                                    fontSize: 13.0
                                ),),
                              ),

                              Align(
                                alignment: Alignment(0.95,-0.70),
                                child: Icon(
                                  Icons.arrow_forward_ios,size: 15.0,
                                ),



                              ),

                              Align(
                                alignment: Alignment(0.85,0.50),

                                child: RatingBar.builder(

                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 27.0,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),



                  Align(
                    alignment: Alignment(0.0,-0.08),
                    child: GestureDetector(
                      onTap: (){
                        print("clicked");
                      },
                      child: Card(
                        child: Container(
                          height: 150,width: 410,
                          color: Colors.transparent,
                          child: Stack(
                            children: [

                              Align(
                                alignment: Alignment(-0.99,-0.80),
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
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                              ),
                              Align(alignment: Alignment(0.40,-0.70),
                                child: Text('Deliverd on ',style: TextStyle(fontFamily: 'cambriab'),),
                              ),

                              Align(
                                alignment: Alignment(0.50,-0.20),
                                child: Text('PRODUCT NAME',style: TextStyle(
                                    fontFamily: 'Acumin Variable Concept',color: Colors.black,
                                    fontSize: 13.0
                                ),),
                              ),

                              Align(
                                alignment: Alignment(0.95,-0.70),
                                child: Icon(
                                  Icons.arrow_forward_ios,size: 15.0,
                                ),



                              ),

                              Align(
                                alignment: Alignment(0.85,0.50),

                                child: RatingBar.builder(

                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 27.0,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),


                  Align(
                    alignment: Alignment(0.0,0.09),
                    child: GestureDetector(
                      onTap: (){
                        print("clicked");
                      },


                      child: Card(
                        child: Container(
                          height: 150,width: 410,
                          color: Colors.transparent,
                          child: Stack(
                            children: [

                              Align(
                                alignment: Alignment(-0.99,-0.80),
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
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                              ),
                              Align(alignment: Alignment(0.40,-0.70),
                                child: Text('Deliverd on ',style: TextStyle(fontFamily: 'cambriab'),),
                              ),

                              Align(
                                alignment: Alignment(0.50,-0.20),
                                child: Text('PRODUCT NAME',style: TextStyle(
                                    fontFamily: 'Acumin Variable Concept',color: Colors.black,
                                    fontSize: 13.0
                                ),),
                              ),

                              Align(
                                alignment: Alignment(0.95,-0.70),
                                child: Icon(
                                  Icons.arrow_forward_ios,size: 15.0,
                                ),



                              ),

                              Align(
                                alignment: Alignment(0.85,0.50),

                                child: RatingBar.builder(

                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 27.0,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),


                  Align(
                    alignment: Alignment(0.0,0.26),
                    child: GestureDetector(
                      onTap: (){
                        print("clicked");
                      },

                      child: Card(
                        child: Container(
                          height: 150,width: 410,
                          color: Colors.transparent,
                          child: Stack(
                            children: [

                              Align(
                                alignment: Alignment(-0.99,-0.80),
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
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                              ),
                              Align(alignment: Alignment(0.40,-0.70),
                                child: Text('Deliverd on ',style: TextStyle(fontFamily: 'cambriab'),),
                              ),

                              Align(
                                alignment: Alignment(0.50,-0.20),
                                child: Text('PRODUCT NAME',style: TextStyle(
                                    fontFamily: 'Acumin Variable Concept',color: Colors.black,
                                    fontSize: 13.0
                                ),),
                              ),

                              Align(
                                alignment: Alignment(0.95,-0.70),
                                child: Icon(
                                  Icons.arrow_forward_ios,size: 15.0,
                                ),



                              ),

                              Align(
                                alignment: Alignment(0.85,0.50),

                                child: RatingBar.builder(

                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 27.0,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),



                  Align(
                    alignment: Alignment(0.0,0.43),
                    child: GestureDetector(
                      onTap: (){
                        print("clicked");
                      },
                      child: Card(
                        child: Container(
                          height: 150,width: 410,
                          color: Colors.transparent,
                          child: Stack(
                            children: [

                              Align(
                                alignment: Alignment(-0.99,-0.80),
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
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                              ),
                              Align(alignment: Alignment(0.40,-0.70),
                                child: Text('Deliverd on ',style: TextStyle(fontFamily: 'cambriab'),),
                              ),

                              Align(
                                alignment: Alignment(0.50,-0.20),
                                child: Text('PRODUCT NAME',style: TextStyle(
                                    fontFamily: 'Acumin Variable Concept',color: Colors.black,
                                    fontSize: 13.0
                                ),),
                              ),

                              Align(
                                alignment: Alignment(0.95,-0.70),
                                child: Icon(
                                  Icons.arrow_forward_ios,size: 15.0,
                                ),



                              ),

                              Align(
                                alignment: Alignment(0.85,0.50),

                                child: RatingBar.builder(

                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 27.0,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),



                  Align(
                    alignment: Alignment(0.0,0.60),
                    child: GestureDetector(
                      onTap: (){
                        print("clicked");
                      },
                      child: Card(
                        child: Container(
                          height: 150,width: 410,
                          color: Colors.transparent,
                          child: Stack(
                            children: [

                              Align(
                                alignment: Alignment(-0.99,-0.80),
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
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                              ),
                              Align(alignment: Alignment(0.40,-0.70),
                                child: Text('Deliverd on ',style: TextStyle(fontFamily: 'cambriab'),),
                              ),

                              Align(
                                alignment: Alignment(0.50,-0.20),
                                child: Text('PRODUCT NAME',style: TextStyle(
                                    fontFamily: 'Acumin Variable Concept',color: Colors.black,
                                    fontSize: 13.0
                                ),),
                              ),

                              Align(
                                alignment: Alignment(0.95,-0.70),
                                child: Icon(
                                  Icons.arrow_forward_ios,size: 15.0,
                                ),



                              ),

                              Align(
                                alignment: Alignment(0.85,0.50),

                                child: RatingBar.builder(

                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 27.0,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),



                  Align(
                    alignment: Alignment(0.0,0.75),
                    child: GestureDetector(
                      onTap: (){
                        print("clicked");
                      },
                      child: Card(
                        child: Container(
                          height: 150,width: 410,
                          color: Colors.transparent,
                          child: Stack(
                            children: [

                              Align(
                                alignment: Alignment(-0.99,-0.80),
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
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                              ),
                              Align(alignment: Alignment(0.40,-0.70),
                                child: Text('Deliverd on ',style: TextStyle(fontFamily: 'cambriab'),),
                              ),

                              Align(
                                alignment: Alignment(0.50,-0.20),
                                child: Text('PRODUCT NAME',style: TextStyle(
                                    fontFamily: 'Acumin Variable Concept',color: Colors.black,
                                    fontSize: 13.0
                                ),),
                              ),

                              Align(
                                alignment: Alignment(0.95,-0.70),
                                child: Icon(
                                  Icons.arrow_forward_ios,size: 15.0,
                                ),



                              ),

                              Align(
                                alignment: Alignment(0.85,0.50),

                                child: RatingBar.builder(

                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 27.0,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),


                  Align(
                    alignment: Alignment(0.0,0.90),
                    child: GestureDetector(
                      onTap: (){
                        print("clicked");
                      },
                      child: Card(
                        child: Container(
                          height: 150,width: 410,
                          color: Colors.transparent,
                          child: Stack(
                            children: [

                              Align(
                                alignment: Alignment(-0.99,-0.80),
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
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                              ),
                              Align(alignment: Alignment(0.40,-0.70),
                                child: Text('Deliverd on ',style: TextStyle(fontFamily: 'cambriab'),),
                              ),

                              Align(
                                alignment: Alignment(0.50,-0.20),
                                child: Text('PRODUCT NAME',style: TextStyle(
                                    fontFamily: 'Acumin Variable Concept',color: Colors.black,
                                    fontSize: 13.0
                                ),),
                              ),

                              Align(
                                alignment: Alignment(0.95,-0.70),
                                child: Icon(
                                  Icons.arrow_forward_ios,size: 15.0,
                                ),



                              ),

                              Align(
                                alignment: Alignment(0.85,0.50),

                                child: RatingBar.builder(

                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 27.0,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              )

                            ],
                          ),
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