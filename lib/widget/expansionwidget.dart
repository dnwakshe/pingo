import 'package:flutter/material.dart';
class Expansiontile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Expansion Tile'
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height:20.0),
          ExpansionTile(
            title: Container(
              
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.black12,
                    spreadRadius: 5,
                    
                  )
                ],
                color: Colors.grey[200],
              ),
             child:Center(
                child: 
                buildChip("intrestes"),
                //Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",fit: BoxFit.fill,),

              //  Text( "Title",
              //   style: TextStyle(
              //     fontSize: 18.0,
              //     fontWeight: FontWeight.bold
              //   ),
              //   ),
             )
            ),
            children: <Widget>[
              ExpansionTile(
                title: Text(
                  'Sub title',
                ),
                children: <Widget>[
                  ListTile(
                    title: Text('data'),
                  )
                ],
              ),
              ListTile(
                title: Text(
                  'data'
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
// =============choice chips
  Widget buildChip(String label,){
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: ChoiceChip(
      labelPadding: EdgeInsets.all(5.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
        
        ),
       
        label: Text(
            label,
            style: TextStyle( color: Colors.black),
          ),        
        elevation: 2.0,
        shadowColor: Colors.black,
        //padding: EdgeInsets.all(8.0), 
        selected: true, 
    ),
  );
  }