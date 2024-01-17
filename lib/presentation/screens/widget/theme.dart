import 'package:flutter/material.dart';

class CustomTheme  {
 BoxDecoration getTheme(){
  const decoration = BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(255, 34, 121, 51)
            ],
          ),
        );

  return decoration;
 }
  
}