import 'package:flutter/material.dart';
import 'custom_values.dart';

class MyAppBar extends AppBar{
  MyAppBar({
    BuildContext context
  }):super(
    elevation: 0.0,
    brightness: Brightness.light,
    backgroundColor: Colors.transparent,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: purpleGrey,
      ),
      onPressed: (){
        Navigator.pop(context);
      }
    ),
    actions: <Widget>[
      Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Icon(
          Icons.fullscreen,
          color: purpleGrey,
        ),
      )
    ]
  );
}