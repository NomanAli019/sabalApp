
import 'package:flutter/material.dart';

TextStyle headings(){
  return TextStyle(
      color: Colors.black ,
      fontSize:24,
      fontWeight: FontWeight.w500);

}

TextStyle subheading(){
  return TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w500
  );
}

TextStyle sub2heading(){
  return TextStyle(
    color: Colors.black,
    fontSize: 19,
    fontWeight: FontWeight.w400
  );
}

TextStyle sub3heading(){
  return TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w600
  );
}

TextStyle listviewstyle(){
  return TextStyle(color: Colors.white);
}

ButtonStyle elevatedButtonStyle(bool isSelected) {
  return ElevatedButton.styleFrom(
    backgroundColor: isSelected ? Colors.green : Colors.transparent,
    foregroundColor: isSelected ? Colors.white : Colors.black,
    shadowColor: Colors.transparent,
    side: BorderSide(
      color: isSelected ? Colors.green : Color(0xFFAEBACD),
      width: 1,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(9),
    ),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
  );
}

ButtonStyle elevatedButtonStyleStatic() {
  return ElevatedButton.styleFrom(
    // Set background color to white
    backgroundColor: Colors.green,

    // Set text and border color to green
    foregroundColor: Colors.white,
    side: const BorderSide(
      color: Colors.white24, // Consistent green color
      width: 1,
    ),

    // Maintain rounded corners
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(9),
    ),

    // Adjust padding as needed
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),

    // Optional: Remove shadow (consider for a cleaner look)
    shadowColor: Colors.transparent,
  );
}