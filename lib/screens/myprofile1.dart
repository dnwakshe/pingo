import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pingo/drawer.dart';
import 'package:pingo/widget/constant.dart';

class Myprofile extends StatefulWidget {
  @override
  _MyprofileState createState() => _MyprofileState();
}
  Color c1 = const Color(0xff232931);
  Color c2 = const Color(0xff393e46);
  Color c3 = const Color(0xff4ecca3);
  Color c4 = const Color(0xffeeeeee);
  
class _MyprofileState extends State<Myprofile> {
  static const String id = "Myprofile";
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var _image;
        return Scaffold(
           floatingActionButton: FloatingActionButton(
                onPressed: (){},
                backgroundColor:Colors.white ,
                child: Icon(Icons.message,color: Colors.grey),
                ) ,
    
          key: _scaffoldKey,
          appBar: PreferredSize(
            child: getAppbar(scaffoldKey: _scaffoldKey),
            preferredSize: Size.fromHeight(50),
            ),
          drawer: AppDrawer(),
          //================
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top:20),
                    height: 200,
                    width: 360,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                                  image: DecorationImage(
                                    fit: BoxFit.fitWidth,
                          // do it corectly 
                                    image: _image == null 
                                ? Image.network(
                                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
                                ).image:
                                 NetworkImage(
                                'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png')
                               

                              ),
                  ),
                  child: Stack(
                   
                    children: [
                      Align(
                        alignment: Alignment(-0.90,2),
                        child: Container(
                          width: 100,
                          height: 100,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,

                            //border: Border.all(),
                          ),
                          child: Image.network(
                                  'https://www.whatsappimages.in/wp-content/uploads/2020/11/Boys-Free-Feeling-Sad-Pics-Images-Download-300x205.jpg',
                                  fit: BoxFit.fill,
                                ),
                        
                        ),
                      ),
                      Align(
                        alignment: Alignment(-0.03, -0.5),
                        child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.add_a_photo,size: 40,),
                            color:Colors.grey,
                           ),
                        ),
                        Align(
                          alignment:Alignment(0,0),
                          child: Text(
                            'Add Cover Photo',
                            style: GoogleFonts.poppins(color: Colors.white,)
                          ),
                        ),
                        Align(
                          alignment: Alignment(0.8,1.5),
                          child: Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                            ),
                            child: Center(child:Text("Edit Profile",
                            style: GoogleFonts.poppins(color: Colors.black,))),
                          ),
                        ),
                        Align(
                          alignment: Alignment(-0.5,1.8),
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.add_a_photo,size: 30,),
                            color:Colors.grey,
                           ),
                        )
                      ],
                    ),
              ),
              SizedBox(height: 50,),
              Container(
                 height: 80,
                  width: 360,
                 child: 
                    Text(
                      "Dnyaneshwar Wakshe\n Mumbai",
                       style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold)
                      ),
                 ),
                 Container(
                 height: 80,
                  width: 360,
                 child: 
                    Column(
                      children: [
                        Text(
                          "PROFILE COMPLETED",
                           style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold)
                          ),

                      ],
                    ),
                 ),


               ],
          ),
          
        ),
      ),


    );
  }
}