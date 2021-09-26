

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pingo/drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pingo/model/colors.dart';
import 'package:pingo/model/messages.dart';
import 'package:pingo/model/userlist.dart';
import 'package:pingo/theme/light_color.dart';
import 'package:pingo/widget/RecentChat.dart';
import 'package:pingo/widget/category_selector.dart';
import 'package:pingo/widget/constant.dart';
import 'package:cloud_firestore/cloud_firestore.dart'as firestore;
import 'package:pingo/widget/favourite_cont.dart';

final _userDetails = firestore.FirebaseFirestore.instance.collection("users").snapshots();
class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  var userData = [];
//  Future<dynamic>getUserdata()async{
//     firestore.QuerySnapshot querySnapshot = await _userDetails.get();
//     querySnapshot.docs.forEach((element) {
//       userData.add(element);
//     });
//     print(userData);
//   }

    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold( 
      backgroundColor: colors.appBarColor,
      floatingActionButton: FloatingActionButton(
            onPressed: (){},
            backgroundColor:Colors.white ,
            child: Icon(Icons.message,color: LightColor.grey),
            ) ,

      key: _scaffoldKey,
      appBar: PreferredSize(
        child: getAppbar(scaffoldKey: _scaffoldKey),
        preferredSize: Size.fromHeight(50),
        ),
      drawer: AppDrawer(),

      body:Column(
        children: [
         CategorySelector(),
         Expanded(
             child: Container(           
             decoration: BoxDecoration(
               color:colors.favourite_bglistColor,
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(30),
                 topRight: Radius.circular(30),
               ),            
               ),
               child: Column(
                 children: [
                   FavouriteContact(),
                   RecentChts(),
                 ],
               )  ,
           ),
         ),
        ],
      ),
      // body: StreamBuilder(
      //   stream: _userDetails,
      //   builder: (BuildContext context,AsyncSnapshot snapshot) {
      //     if(!snapshot.hasData){
      //       return Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     }
      //     return ListView(
      //       children: 
      //         snapshot.data.docs
           
      //     );
      //   }
      // ),
      
    );
  }
 
}