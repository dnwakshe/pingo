import 'package:flutter/material.dart';
import 'package:pingo/widget/constant.dart';

class ProgessCircle extends StatefulWidget {
  @override
  _ProgessCircleState createState() => _ProgessCircleState();
}
// const TWO_PI = 3.14*2;
class _ProgessCircleState extends State<ProgessCircle> {
  @override
  Widget build(BuildContext context) {
   // final size = 200.0;
 //Image img=AssetImage('assets/logo.png') as Image;
    return Scaffold(
       appBar: AppBar(
          backgroundColor: Colors.white,
           leading:Padding(
             padding: const EdgeInsets.all(8.0),
             child: Image(image: AssetImage('assets/logo.png'),),
           ) ,
      
            title: Text("Pingo",style: fontstyle()), 
        
      ),
      
      body:getProgess(),
      
      //  Center(
      //   child: Container(
      //     height: size,
      //     width: size,
          
      //     child: Stack(
      //       children: [
      //         ShaderMask(shaderCallback: (rect){
               
      //               return SweepGradient(
      //                   startAngle: 0.0,
      //                   endAngle: TWO_PI,
      //                   // with the help of Stop we can limit the color of sweepgradient
      //                   stops: [0.2,0.2], 
      //                   // name & email = 10%[0.1,0.1] ,
      //                   // about trip = 10%[0.1,0.1]
      //                   // travel intrest = 10%[0.1,0.1]
      //                   //image upload = = 10%[0.1,0.1]
      //                   // about him = 10%[0.1,0.1]
      //                   // document upload 1 = 10%[0.1,0.1]
      //                   // document upload 1 = 10%[0.1,0.1]
                        
      //                   center: Alignment.center,
      //                   colors: [Colors.amber,Colors.grey.withAlpha(55)]
      //                   ).createShader(rect);
      //               },
      //               child: Container(
      //                 height: size,
      //                 width: size,
      //                 decoration: BoxDecoration(
      //                   shape: BoxShape.circle,
      //                   color: Colors.white,
      //                 ),
      //               ),
      //          ),

      //         Center(
      //           child: Container(
      //             height: size-30,
      //             width: size-30,
      //             decoration: BoxDecoration(
      //               color: Colors.white,
      //               shape: BoxShape.circle,
                    
                    
      //             ),
      //             child:  CircleAvatar(
      //             //radius: 5,
      //             backgroundImage: AssetImage('assets/logo.png',),                 
                  
                 
      //               ) ,
      //           ),
      //         )
      //       ],
      //     ),
      //    ),
      //   ),
      
    );
  }
}