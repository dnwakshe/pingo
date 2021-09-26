

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pingo/screens/login.dart';
import 'package:pingo/widget/constant.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey =  GlobalKey<FormState>();
  FirebaseAuth firebase = FirebaseAuth.instance;

  TextEditingController userName = new TextEditingController();
  TextEditingController userEmail = new TextEditingController();
  TextEditingController userPassword = new TextEditingController();
  TextEditingController userRe_Password = new TextEditingController();
  
 

  @override
  initState(){
      
  TextEditingController userName = new TextEditingController();
  TextEditingController userEmail = new TextEditingController();
  TextEditingController userPassword = new TextEditingController();
  TextEditingController userRe_Password = new TextEditingController();  
  super.initState();
  }

  @override
  Widget build(BuildContext context) {    
    return Scaffold(     
      appBar: AppBar(
          backgroundColor: Colors.white,
           leading:Padding(
             padding: const EdgeInsets.all(8.0),
             child: Image(image: AssetImage('assets/logo.png',),),
           ) ,      
            title: Text("Pingo",style: fontstyle()), 
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: _formKey,
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [              
              TextFormField(
                decoration: InputDecoration(                   
                      hintText: "UserName",
                      hintStyle: GoogleFonts.poppins(color: Colors.black,),
                      suffixIcon: Icon(Icons.person,color: Colors.grey,size: 40,),                  
                    ),
                    controller: userName,
                    validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Name';
                        }
                        return null;
                      },
                    
              ),
              TextFormField(
                decoration: InputDecoration(                   
                      hintText: "Email",
                      hintStyle: GoogleFonts.poppins(color: Colors.black,),
                      suffixIcon: Icon(Icons.email,color: Colors.grey,size: 40,),                  
                    ),
                    controller: userEmail,
                     validator: ( value) {
                              RegExp regex = new RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]");
                              if (!regex.hasMatch(value!)) {
                                return 'Email format is invalid';
                              } else {
                                return null;
                              }
                            },
                    
                    
              ),
              TextFormField(
                decoration: InputDecoration(                   
                      hintText: "Password",
                      hintStyle: GoogleFonts.poppins(color: Colors.black,),
                      suffixIcon: Icon(Icons.lock,color: Colors.grey,size: 40,),                  
                    ),
                    controller: userPassword,
                    validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Password.';
                        }
                        if (value.length < 5) return 'Enter  5 digit Password ';
                        return null;
                      },
                    obscureText: true, 
                    
              ),
              TextFormField(
                decoration: InputDecoration(                   
                      hintText: "Re-Password",
                      hintStyle: GoogleFonts.poppins(color: Colors.black,),
                      suffixIcon: Icon(Icons.lock,color: Colors.grey,size: 40,),                  
                    ),
                    controller: userRe_Password,
                    validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Password .';
                        }
                        if (value.length < 5) return 'Enter  5 digit Password ';
                        return null;
                      },
                    obscureText: true, 
                   
              ),


               
               SizedBox(height: 10,),
                    Container(
                        alignment: Alignment.bottomRight,
                        child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                        child: Text("Forget Password?"),
                      ),
                    ),

               SizedBox(height: 10,),
            InkWell(
               child: Container(
                     height: 50,
                     decoration: BoxDecoration(
                     color: Colors.grey[600],
                     borderRadius: BorderRadius.circular(30),
                     boxShadow:
                        [BoxShadow(
                          color: Colors.white,
                          blurRadius: 10.0,
                          offset: Offset(0.0, 0.75)                   
                            ),
                          ], 
                   ),
                   child: Center(
                     child: Text(
                       "Register",
                       style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold ),
                       ),
                       ),
                 ),
                 onTap: (){
                   
                  login();
                   print(userName.text);
                   print(userEmail.text);
                   print(userPassword.text);
                   print(userRe_Password.text);
                  // Navigator.push(
                  //   context, MaterialPageRoute(builder: (context) =>LogIn())
                 
                                  },
                             ),
                               SizedBox(height: 10,),
                               Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[600],
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow:
                                    [BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 10.0,
                                      offset: Offset(0.0, 0.75)                   
                                       ),
                                     ], 
                                  ),
                               
                                  child: Center(child: Text("Sign in with Google",style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold ),)),
                                ),                              
                                SizedBox(height: 90,)                   
                             ],
                             ),
                         ),
                       ),
                 
                     );
                   }
      void login() async {
          if(_formKey.currentState!.validate()){
           
            if(userPassword.text == userRe_Password.text){
              firebase.createUserWithEmailAndPassword(
                email:userEmail.text , 
                password: userPassword.text,
                )
                .then((currentUser) => FirebaseFirestore.instance
                .collection("users")
                .doc(currentUser.user!.uid)
                .set({
                  "uid": currentUser.user!.uid,
                  "name":userName.text,
                  "email":userEmail.text
                })
                .then((value) =>  Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => LogIn()),
                                            (_) => false),
                ));
              

            }else{
              showDialog(context: context, builder: (BuildContext context){
                return AlertDialog(
                  title: Text("Error"),
                  content: Text("The Password do not match"),
                  actions: [
                    FlatButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: Text("Close"))
                  ],
                );
              });
          }       
        }
    }               
                   
}
