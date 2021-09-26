import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pingo/model/messages.dart';
import 'package:pingo/model/colors.dart';
import 'package:pingo/screens/chats.dart';

class RecentChts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
                     child: Container(                   
                       decoration: BoxDecoration(
                        color:colors.chat_bglistColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),            
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            topLeft: Radius.circular(30.0)
                          ),
                            child: ListView.builder(
                            itemCount: chats.length,
                            itemBuilder: (BuildContext context, int index){
                              final chat=chats[index];

                          return GestureDetector(
                            onTap: ()=>Navigator.push(
                              context, MaterialPageRoute(
                                builder: (_)=> ChateScreen(
                                  user: chat.sender,
                                  ),
                                ),
                            ),
                            child: Container(
                             margin: EdgeInsets.only(top: 5.0,bottom: 5.0,right: 20.0),
                              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                              decoration: BoxDecoration(

                                  color: chat.unread ? Color(0xffffeffe) : Colors.white,

                                  borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20.0),

                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 35.0,
                                            backgroundImage: AssetImage(chat.sender.urlAvatar),
                                          ),
                                          SizedBox(width: 10.0,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                chat.sender.name,
                                                style: GoogleFonts.poppins(
                                                  color: colors.nameColor,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 1
                                                  ),
                                                ),
                                                SizedBox(height: 5.0,),
                                                Container(
                                                  width: MediaQuery.of(context).size.width*0.45,
                                                  child: Text(
                                                    chat.text,
                                                    style: GoogleFonts.poppins(
                                                    color: colors.messageColor,
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 1
                                                    ),
                                                    overflow: TextOverflow.ellipsis,
                                                    ),
                                                )
                                            ],
                                          ),
                                        ],
                                      ),
                                    Column(

                                      children: [
                                        Text(
                                          chat.time,
                                          style: GoogleFonts.poppins(
                                            color: colors.nameColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.0)
                                          ),
                                          SizedBox(height: 5.0,),
                                       chat.unread ? Container(
                                          height: 20,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: colors.background,
                                            borderRadius: BorderRadius.circular(30),
                                            
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "New",
                                            style: GoogleFonts.poppins(
                                              color: colors.textColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0)
                                            )
                                          )
                                          : SizedBox.shrink(),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                          );
           }
          ),
                        )
       ),
     );
  }
}