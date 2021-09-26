
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pingo/drawer.dart';
import 'package:pingo/widget/constant.dart';

class Rating extends StatefulWidget {
  @override
  _RatingState createState() => _RatingState();
}
  Color c1 = const Color(0xff232931);
  Color c2 = const Color(0xff393e46);
  Color c3 = const Color(0xff4ecca3);
  Color c4 = const Color(0xffeeeeee);
  
class _RatingState extends State<Rating> {
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Container(
                   height: 100,
                   
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Colors.white12,
                     
                     
                     ),
                  
                 ),
                    RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),

               ],
          ),
          
        ),
      ),


    );
  }
}

// class StarDisplayWidget extends StatefulWidget {
//    int value;
//    Widget filledStar;
//    Widget unfilledStar;

//    StarDisplayWidget({
    
//     required this.value,
//     required this.filledStar,
//     required this.unfilledStar,
//   });
//   @override
//   _StarDisplayWidgetState createState() => _StarDisplayWidgetState(
//     filledStar:filledStar,value:value,unfilledStar: unfilledStar
//   );
  
// }
// class _StarDisplayWidgetState extends State<StarDisplayWidget>{
//    int value;
//    Widget filledStar;
//    Widget unfilledStar;

//    _StarDisplayWidgetState({
    
//     required this.value,
//     required this.filledStar,
//     required this.unfilledStar,
//   });
 

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: List.generate(5, (index) {
//         return index < value ? filledStar : unfilledStar;
//       }),
//     );
//   }
// }
// //Widget getSart();