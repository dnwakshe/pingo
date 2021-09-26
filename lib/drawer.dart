import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pingo/screens/login.dart';
import 'package:pingo/screens/myprofile1.dart';

class AppDrawer extends StatelessWidget {
   Widget _createHeader() {
      return DrawerHeader(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: new AssetImage('assets/pexels.jpeg')
                  
                  )),
          child: Stack(children: <Widget>[
            Positioned(
                bottom: 12.0,
                left: 16.0,
                child: Text("Flutter Step-by-Step",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500))),
          ]));
    }

    Widget _createDrawerItem(
    {required IconData icon,required String text,required  GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}

  @override
  Widget build(BuildContext context) {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    Future<void> _signOut() async {
            await _auth.signOut();
            } 
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(icon: Icons.person,text: 'My Profile', onTap: () { 
             Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Myprofile(), ));}),
          _createDrawerItem(icon: Icons.event, text: 'Events',onTap: () {  },),
          _createDrawerItem(icon: Icons.note, text: 'Notes',onTap: () {  },),
          Divider(),
          _createDrawerItem(icon: Icons.collections_bookmark, text:           'Steps', onTap: () {  },),         
          _createDrawerItem(icon: Icons.account_box, text: 'Flutter Documentation',onTap: () {  },),
          _createDrawerItem(icon: Icons.stars, text: 'Useful Links',onTap: () {  },),
          Divider(),
          _createDrawerItem(icon: Icons.logout, text: 'Log out',onTap: () { 
            _signOut();  
            Navigator.push(context, MaterialPageRoute(builder: (_)=>LogIn()));           
            },
        ),
          ListTile(
            title: Text('0.0.1'),
            onTap: () {},
          ),
        ],
      ),
    );
  // ignore: dead_code
 

  }
}

