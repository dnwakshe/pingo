import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pingo/model/colors.dart';
import 'package:pingo/model/messages.dart';
import 'package:pingo/model/user.dart';

class ChateScreen extends StatefulWidget {
  final User user; //if ur going to make chating product the here u should send chatroom id 
  ChateScreen({required this.user});
  @override
  _ChateScreenState createState() => _ChateScreenState();
}

class _ChateScreenState extends State<ChateScreen> {
  _buildMessage(Message message, bool isMe){
    final Container msg = 
    Container(
          margin: isMe ?EdgeInsets.only(
            top:8.0,
            bottom: 8.0,
            left: 80.0
            ) 
            :EdgeInsets.only(
              top:8.0,
              bottom:8.0,
              //right:80.0
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),         
            width: MediaQuery.of(context).size.width*0.75,
            decoration: BoxDecoration(
              color: isMe ? colors.userMessageColor :colors.nextMessageColor ,
              borderRadius: isMe? BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30)
              ):
               BorderRadius.only(
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30)
              )

            ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Text(
                message.time,
                style: GoogleFonts.poppins(
                color: colors.messageColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1
                ),
                ),
              SizedBox(height: 8.0),
              Text
              (
                message.text,
                style: GoogleFonts.poppins(
                color: colors.messageColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1
                ),
              ),
            ],
          ),
        );
        if(isMe){
          return msg;
        }
    return Row(
      children: [
        msg,
       IconButton(
            onPressed: (){}, 
            icon: message.isLiked 
            ? Icon(Icons.favorite)
            : Icon(Icons.favorite_border),
            iconSize: 30.0,
            color: message.isLiked ? colors.appBarColor: Colors.grey,
            ),
      ],
    );
  }


  _buildMessageComposer(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70,
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.photo),
            iconSize: 30.0,
            color: colors.appBarColor  ,
            ),
            Expanded(
              
              child:TextField(
               textCapitalization: TextCapitalization.sentences,
               onChanged: (value)=>{},
                decoration: InputDecoration.collapsed(
                  hintText: "Send Message.."
                ),
              ),
              ),
            IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.send),
            iconSize: 30.0,
            color: colors.appBarColor  ,
            )
        ],
        ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.appBarColor,
      appBar: AppBar(
        backgroundColor: colors.appBarColor,
        title: Text(
          widget.user.name,
          style: GoogleFonts.poppins(
            color: colors.textColor,
            fontWeight: FontWeight.bold,
            letterSpacing: 1
            ),
          ),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.more_horiz),
            iconSize: 30.0,
            color: colors.textColor,
            )
        ],
        elevation: 0,
        ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
                Expanded(
                  child: Container(                              
                    decoration: BoxDecoration(
                  color: colors.chat_bglistColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  ),
                  child: 
                      ClipRRect(
                        borderRadius:BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ) ,
                          child: ListView.builder(
                            reverse: true,
                          padding: EdgeInsets.only(top:15.0),
                          itemCount: messages.length,
                          itemBuilder: (BuildContext context, int index){
                            final Message message = messages[index];
                            final bool isMe =message.sender.idUser == currentUser.idUser;
                            return _buildMessage(message,isMe);
                          }
                          ),
                      )
                       ),
                ),

                _buildMessageComposer(),
          ],
                
        ),
      ),
    );
  }
}