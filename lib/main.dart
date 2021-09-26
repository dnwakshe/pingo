// @dart=2.9
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pingo/model/colors.dart'; 
import 'package:pingo/screens/user_list.dart';
import 'package:pingo/screens/contacts.dart';
import 'package:pingo/screens/login.dart';
import 'package:pingo/screens/myprofile.dart';
import 'package:pingo/screens/myprofile1.dart';
import 'package:pingo/screens/progress.dart';
import 'package:pingo/screens/singin.dart';
import 'package:pingo/screens/stateMgt.dart';
import 'package:pingo/widget/expansionwidget.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
bool login = false;
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
     
      home:Chat(),
      
      debugShowCheckedModeBanner: false,  
      
    );
  }
}

