

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pingo/widget/constant.dart';
import 'package:pingo/theme/light_color.dart';
var name;
var email;
var userdata=[];
Map<String, dynamic> users =[] as Map<String, dynamic>;
 Widget userlist(String userdata, String email) {
   return  Container(
    height : 700,
    child: ListView.builder(
      //itemCount: QuerySnapshot.docs.length,
        itemBuilder: (BuildContext context,  int index){
          
          return Container(
            height: 80,
            child: Card(
              color: LightColor.backgroundColor,

              child: ListTile(
                leading: CircleAvatar( 
                  backgroundImage:NetworkImage("http://images4.fanpop.com/image/photos/20900000/My-beloved-Gokuu-3-dragon-ball-z-20932475-416-408.jpg"),
                  ),
                title: Text(userdata,style: fontstyle(),),
                subtitle: Text(email,style: fontstyle(),),
              ),

            ),
          );
        }

        ),
    
  );
  
}
