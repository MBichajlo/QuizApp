


import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  
  const StyledText(this.text,this.color,this.fontSize,{super.key});

  final String text;
  final Color color;
  final double fontSize;

  @override Widget build(context) {
    
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        
        color: color,
        fontSize: fontSize
      ),
    );
  }
}