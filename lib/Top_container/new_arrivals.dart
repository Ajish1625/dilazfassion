import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MyApp(),
//   ));
// }

class newarrivals extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<newarrivals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        // leading: Icon(Icons.menu,color: Colors.grey,),
        title: Text('NEW ARRIVALS',style: TextStyle(color: Colors.black,fontFamily: 'Rosmatika (DEMO)',fontSize: 15.0),),
       // title: Image.asset("assets/images/myunde logo.png",height: 70,width: 80),
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
                    height: 1000,width: MediaQuery.of(context).size.width,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("assets/images/abc.png"),
                          fit: BoxFit.cover
                      ),
                    ),
                  )
                ]
            )
        )




    );
  }
}