import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pingo/model/colors.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedindex =0;
  final List<String> category =['Message','Online', 'Group','Requests'];
  @override
  Widget build(BuildContext context) {
    return  Container(
            height: 90.0,
            color: colors.category_background,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: category.length,
              itemBuilder: (BuildContext context , int index){
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedindex = index;
                    });
                  },
                    child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                       vertical: 30
                       ),
                    child: Text(
                      category[index],
                      style: GoogleFonts.poppins(
                        color: index == selectedindex ? colors.textColor: colors.bgtextColor,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1
                        ),
                      ),
                  ),
                );
              }
              ),
          );
  }
}