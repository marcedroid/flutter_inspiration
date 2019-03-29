import 'package:flutter/material.dart';
import 'menu.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

void main(){
  //timeDilation = 3.0;
  runApp(
    MaterialApp(
        title: 'Inspiración',
        theme: ThemeData.light(),
        home: Menu()
    )
  );
}