import 'package:flutter/material.dart';

class StateMgt extends StatefulWidget {
  @override
  _StateMgtState createState() => _StateMgtState();
}

class _StateMgtState extends State<StateMgt> {

  late GlobalKey<ScaffoldState>  _key;
  late List<String> _dynamicChips;
  late bool _isSelected=false;

  @override
  void initState(){
    super.initState();
     _key = GlobalKey<ScaffoldState>();
     _dynamicChips =["Health","Food","Nature","Health","Food","Nature","Health","Food","Nature"];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:  rowChip(),
          ),
          Divider(color: Colors.black,),
         
          wrapWidget(),

          Divider(color: Colors.black,),
          dynamicChips(),
          Divider(color: Colors.black,),
          actioinChips(),
          Divider(color: Colors.black,),
          inputChip(),

        ],
      ), 
  
    );
  }
    rowChip(){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          chip("Sports", Colors.amberAccent),
          chip("Nature", Colors.greenAccent),
          chip("Travel", Colors.pinkAccent),
          chip("treck", Colors.orangeAccent),
          chip("Sports", Colors.amberAccent),
          chip("Nature", Colors.greenAccent),
          chip("Travel", Colors.pinkAccent),
          chip("treck", Colors.orangeAccent),
        ],
      );
    }
    dynamicChips(){
      return Wrap(
        spacing: 6.0,
        runSpacing: 6.0,
        children: List.generate(_dynamicChips.length, (index) {
          return Chip(
            label: Text(_dynamicChips[index]),
            avatar: CircleAvatar(
              backgroundColor: Colors.blueGrey[200],
              child: Text(_dynamicChips[index][0]),
            ),
             onDeleted: (){
          setState(() {
            _dynamicChips.removeAt(index);
          });          
        },
        deleteIcon: Icon(Icons.delete),
            );
        }),
      );
    }

  Widget inputChip(){
   return Wrap(
     spacing: 6.0,
     runSpacing: 6.0,
     children: List.generate(_dynamicChips.length, (int index){
       return InputChip(
         label: Text(_dynamicChips[index]),
         selected: _isSelected,
         selectedColor: Colors.green,
         onSelected: (bool selected){
           setState(() {
            _isSelected = selected;
           });
         },
         );
      }
     )
   );
 }


    Widget actioinChips(){
      return ActionChip(
        elevation: 6.0,
        padding: EdgeInsets.all(10.0),
        avatar: CircleAvatar(
          backgroundColor: Colors.greenAccent,
          child: Icon(Icons.call),
          ),
          label: Text("call"),
          onPressed: (){
            _key.currentState!.showSnackBar(SnackBar(content: Text("Calling...")));
          },
          backgroundColor: Colors.white,
          shape: StadiumBorder(side: BorderSide(
            width: 1,
            color: Colors.blueAccent) ),
        
      );
    }



  wrapWidget(){
      return Wrap(
        spacing: 6.0,
        runSpacing: 6.0,
        children: [
          chip("Sports", Colors.amberAccent),
          chip("Nature", Colors.greenAccent),
          chip("Travel", Colors.pinkAccent),
          chip("treck", Colors.orangeAccent),
          chip("Sports", Colors.amberAccent),
          chip("Nature", Colors.greenAccent),
          chip("Travel", Colors.pinkAccent),
          chip("treck", Colors.orangeAccent),
           chip("Travel", Colors.pinkAccent),
          chip("treck", Colors.orangeAccent),
        ],
      );
    }


  Widget chip(String label, Color color){
  return Container(
    child: Chip(
      avatar: CircleAvatar(
        backgroundColor:Colors.grey.shade600,
        child: Text(label[0].toUpperCase()),
        
      ),
      label: Text(
        label,
        style: TextStyle( 
          color: Colors.white,
        ),
        ),
       
        backgroundColor: color,
        elevation: 6.0,
        shadowColor: Colors.grey[50],
        padding: EdgeInsets.all(6.0),
    ),
  );
}
}
