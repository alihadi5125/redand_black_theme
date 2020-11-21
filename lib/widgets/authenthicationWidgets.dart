import 'package:flutter/material.dart';
import 'package:redandblacktheme/Colors/colors.dart';



Widget textField(String text){
  return  TextField(
    cursorColor: primaryOrangeColor,
    style: TextStyle(color: primaryOrangeColor),
    enabled: true, // to trigger disabledBorder
    decoration: InputDecoration(


      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide:
        BorderSide(width: 1, color: primaryOrangeColor),

      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide:
        BorderSide(width: 1, color: primaryOrangeColor),
      ),
      labelText: text,
      labelStyle:
      TextStyle(fontSize: 16, color: primaryOrangeColor,fontFamily: 'Play Fair Display'),
    ),
  );

}
Widget button(String text){
  return Container(

    width: 300,
    height: 50,
    child: RaisedButton(
      color: primaryOrangeColor,
      child: Text(text, style: TextStyle(
          fontFamily: 'Play Fair Display',
          fontSize: 30,
          fontWeight: FontWeight.bold
      ),),
      onPressed: () {},
    ),
  );
}
Widget text(String text, double size, double opacity){
  return Text(
    text,
    style: TextStyle(
        color: primaryOrangeColor.withOpacity(opacity),
        fontFamily: 'Play Fair Display',

        fontSize: size,
    ),
  );
}