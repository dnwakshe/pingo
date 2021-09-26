import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pingo/model/colors.dart';
import 'package:pingo/model/messages.dart';
import 'package:pingo/screens/chats.dart';

class FavouriteContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                      children: [
                        Text("Faourite Contact",style: GoogleFonts.poppins(color: colors.listextColor,fontWeight: FontWeight.bold,letterSpacing: 1)),
                        IconButton(
                          onPressed: (){}, 
                          icon: Icon(
                            Icons.more_horiz,
                            size: 30,                           
                            ),
                          )
                      ],
                    ),
          ),

        Container(
          height: 120,
          
          child: ListView.builder(
            padding: EdgeInsets.only(left:10.0,),
            scrollDirection: Axis.horizontal,
            itemCount: favourit.length,
            itemBuilder: (BuildContext context, int index){
              return GestureDetector(
                onTap: ()=>Navigator.push(
                              context, MaterialPageRoute(
                                builder: (_)=> ChateScreen(
                                  user: favourit[index],
                                  ),
                                ),
                            ),
                              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      
                      CircleAvatar(
                        radius: 40,
                         backgroundImage: AssetImage(favourit[index].urlAvatar,),
                      ),
                      Text(
                        favourit[index].name,
                        style: GoogleFonts.poppins(color: colors.listextColor,fontWeight: FontWeight.bold,letterSpacing: 1) ,
                        ),
                    ],
                  ),
                ),
              );

            },
            
            ),
        ),
        ],
      ),
    );
  }
}