import 'package:demodezi/Homepage.dart';
import 'package:demodezi/data/json_data.dart';
import 'package:flutter/material.dart';


class login_success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Container(
            height: 300,width: 400,
            child: Image.asset(
              "assets/images/success.png",
              fit: BoxFit.cover,

            ),
          ),

          Text(
            "Login Success",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Spacer(),
          SizedBox(

            child: GestureDetector(

              child:Container(
                  height: 60,width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.black,
                  ),

                  child: Center(
                    child: Text("Back to home",style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,fontSize: 19.0,
                        fontFamily: "ComicSansMS3"),),
                  )),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> MyApp())
                );
              },
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }



}
