import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ColoresSeleccionWidget extends StatelessWidget {
  
  Color color;
  ColoresSeleccionWidget({this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: color, 
         shape: BoxShape.circle),
      
    );
  }
}
