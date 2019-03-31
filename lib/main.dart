import 'package:flutter/material.dart';
import 'menu.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

void main(){
  //timeDilation = 3.0;
  //debugPaintSizeEnabled = false,
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inspiración',
      theme: ThemeData.light(),
      home: Menu()
    )
  );
}