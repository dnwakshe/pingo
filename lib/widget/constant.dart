import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pingo/model/colors.dart';


Widget getAppbar({required GlobalKey<ScaffoldState> scaffoldKey}){
  return  AppBar(
        backgroundColor: colors.appBarColor,
       // elevation: 0,
        leading:  IconButton(          
          onPressed: (){
            scaffoldKey.currentState!.openDrawer();
          },
          icon: Image(image: AssetImage('assets/logo.png'),) ,
         ),
       
        title: Text("Pingo",style: GoogleFonts.poppins(color: colors.textColor,fontWeight: FontWeight.bold,letterSpacing: 1)),
        actions: [
          IconButton(
              onPressed: (){},
              icon:Icon(Icons.search_outlined,color: colors.iconColor),
          ),
          
            IconButton(
              onPressed: (){},
              icon:Icon(Icons.more_vert_outlined,color: colors.iconColor),
          ),  
         ],
         elevation: 0,
      );
}
Widget textFieldInputDecoration( String hintText, IconData icon,TextEditingController user){
  
 return 
     TextFormField(
                  controller: user,
                  decoration: InputDecoration(
                   
                    hintText: hintText,
                    hintStyle: GoogleFonts.poppins(color: Colors.black,),
                    suffixIcon: Icon(icon,color: Colors.grey,size: 40,),
                  
                  ),
 );


}
// this is generinc fond style funciton
 fontstyle(){
  return GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold);
}

Widget getProgess (
  
){
const TWO_PI = 3.14*2;
final size = 100.0;
  var _image;
   //                         'https://media.geeksforgeeks.org/wp-content/cdn-uploads/20190806131525/forkPython.jpg');
                return Container(
                  padding: EdgeInsets.only(right: 10,left: 10),
                  height: 200,
                  
                  decoration: BoxDecoration(
                    color: Colors.grey.withAlpha(55),
                    
                  // image:  networkImage, //Image.network
                                
              
            
        ),
    
    child: Center(
          child: Container(
            height: size,
            width: size,
            
            child: Stack(
              children: [
                ShaderMask(shaderCallback: (rect){
                 
                      return SweepGradient(
                          startAngle: 0.0,
                          endAngle: TWO_PI,
                          // with the help of Stop we can limit the color of sweepgradient
                          stops: [0.2,0.2], 
                          // name & email = 10%[0.1,0.1] ,
                          // about trip = 10%[0.1,0.1]
                          // travel intrest = 10%[0.1,0.1]
                          //image upload = = 10%[0.1,0.1]
                          // about him = 10%[0.1,0.1]
                          // document upload 1 = 10%[0.1,0.1]
                          // document upload 1 = 10%[0.1,0.1]
                          
                          center: Alignment.center,
                          colors: [Colors.amber,Colors.grey.withAlpha(55)]
                          ).createShader(rect);
                      },
                      child: Container(
                        height: size,
                        width: size,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                 ),

                Center(
                  child: Container(
                    height: size-10,
                    width: size-10,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      
                      
                    ),
                    child:  CircleAvatar(
                    //radius: 5,
                    backgroundImage:AssetImage('assets/logo.png'),
                   // child: Text("Dnyo"),      
                     
                    
                   
                      ) ,
                  ),
                )
              ],
            ),
           ),
    ),
   
  );
}
// class FirebaseApi{
//   static Stream<List<User>> getUSers()=> FirebaseFirestore.instance
//   .collection(collectionPath)
// }