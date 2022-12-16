import 'package:demodezi/Login_page/otp/login.dart';
import 'package:flutter/material.dart';
import 'InputDeco_design.dart';
import 'login_success.dart';
import 'otp/otp_main.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  late String name,email,phone;

  //TextController to read text entered in text field
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,


      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(

              children: [

                Padding(padding: EdgeInsets.only(bottom: 100),
                    child:Container(
                      child: Image.asset("assets/images/myunde logo.png",height: 70,
                      ),
                    )

                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20,left: 10,right: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration:buildInputDecoration(Icons.email,"Email"),
                    validator: ( value){
                      if(value!.isEmpty)
                      {
                        return 'Please a Enter';
                      }
                      if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                        return 'Please a valid Email';
                      }
                      return null;
                    },
                    onSaved: ( value){
                      email = value!;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20,left: 10,right: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration:buildInputDecoration(Icons.phone,"Phone No"),
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return 'Please enter phone no ';
                      }
                      return null;
                    },
                    onSaved: (value){
                      phone = value!;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20,left: 10,right: 10),
                  child: TextFormField(
                    controller: password,
                    keyboardType: TextInputType.text,
                    decoration:buildInputDecoration(Icons.lock,"Password"),
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return 'Please a Enter Password';
                      }
                      return null;
                    },

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20,left: 10,right: 10,),
                  child: TextFormField(
                    controller: confirmpassword,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration:buildInputDecoration(Icons.lock,"Confirm Password"),
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return 'Please re-enter password';
                      }
                      print(password.text);

                      print(confirmpassword.text);

                      if(password.text!=confirmpassword.text){
                        return "Password does not match";
                      }

                      return null;
                    },

                  ),
                ),

                SizedBox(
                  width: 200,
                  height: 50,
                  child: GestureDetector(
                    // color: Colors.redAccent,
                    onTap: (){

                      if(_formkey.currentState!.validate())
                      {
                        // var login_success;
                        // Navigator.pushNamed(context, '/login_success');
                        // print("successful");

                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> login_success())
                        );
                        return;
                      }else{
                        print("UnSuccessfull");
                      }
                    },
                    child: Container(
                        height: 50,width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.orange,
                        ),

                        child: Center(child: Text("Submit",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),))),

                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 50,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10,right: 10,),
                  child: Container(
                    child: Column(
                      children: [

                        Text("Already a customer?"),
                        TextButton(onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> otp_screen())
                          );

                        },
                            child: Text("Log in"))
                      ],
                    ),
                  ),




                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}