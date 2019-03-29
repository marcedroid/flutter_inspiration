import 'package:flutter/material.dart';

class MyBottomNavigation extends BottomAppBar{
  MyBottomNavigation():super(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 10.0),
          child: Icon(
            Icons.clear_all,
            size: 28.0,
            color: Colors.grey,
          ),
        ),

        Container(
          padding: EdgeInsets.only(top: 10.0),
          child: Icon(
            Icons.control_point,
            size: 28.0,
            color: Colors.grey,
          ),
        ),

        Container(
          padding: EdgeInsets.only(top: 10.0),
          child: Icon(
            Icons.perm_identity,
            size: 28.0,
            color: Colors.grey,
          ),
        )
      ],
    ),
  );
}