import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pingo/main.dart';
import 'package:pingo/screens/user_list.dart';
import 'package:pingo/screens/singin.dart';
import 'package:pingo/widget/constant.dart';
class LogIn extends StatefulWidget {


  @override
  _LogInState createState() => _LogInState();
}



class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
     final GlobalKey<ScaffoldState> _formKey = new GlobalKey<ScaffoldState>();
     TextEditingController userEmail = new TextEditingController();
      TextEditingController userPassword = new TextEditingController();
     @override
     initState(){
        TextEditingController userEmail = new TextEditingController();
        TextEditingController userPassword = new TextEditingController();
       super.initState();
     }
     
    
    return Scaffold( 
    
      appBar: AppBar(
          backgroundColor: Colors.white,
           leading:Padding(
             padding: const EdgeInsets.all(8.0),
             child: Image(image: AssetImage('assets/logo.png'),),
           ) ,
      
            title: Text("Pingo",style: fontstyle()), 
      ),
      
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
             
            //  textFieldInputDecoration("Email", Icons.email),
            //  textFieldInputDecoration("Password", Icons.password),
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
                  obscureText: true,
                  validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Password .';
                        }
                        if (value.length < 5) return 'Enter  5 digit Password ';
                        return null;
                      },
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
             GestureDetector(
               onTap: (){
                 //if(_formKey.currentState!.validate()){
                   FirebaseAuth.instance.signInWithEmailAndPassword(
                     email: userEmail.text,
                     password: userPassword.text,)
                     .then((currentUser) => FirebaseFirestore.instance
                     .collection("users")
                     .doc(currentUser.user!.uid)
                     .get()
                     .then((DocumentSnapshot result ) => Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Chat()),
                                            (_) => false),
                                            )                   
                     );
                 },
              // },
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
                          "Sign in",
                          style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold ),
                          )
                     ),
               ),
             ),
            SizedBox(height: 10,),
            Divider(height: 20,color: Colors.grey,),
           
             SizedBox(height:10),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Don't have an Account?",style:fontstyle()),
                   GestureDetector(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (_)=>SignIn()));
                     },
                     child: Text(" Register Now",
                     style:GoogleFonts.poppins(color: Colors.blueAccent,fontWeight: FontWeight.bold ),),
                     ),
                 ],
                 ),
             ),
             SizedBox(height: 90,)

          ],
          ),
      ),

    );
  }
}