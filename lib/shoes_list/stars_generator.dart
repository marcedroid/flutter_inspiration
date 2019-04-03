import 'package:flutter/material.dart';

class StarsGenerator extends StatelessWidget {
  final dataStars;
  final dataIndex;

  StarsGenerator(this.dataStars, this.dataIndex);

  @override
  Widget build(BuildContext context) {
    Widget buildStar(int index) {
      if (index >= dataStars) {
        return Container(
            margin: EdgeInsets.only(right: 2.0),
            child: Icon(
              Icons.star,
              color: Colors.black38,
              size: 13.0,
            ));
      } else if (index > dataStars - 1 && index < dataStars) {
        return Container(
            margin: EdgeInsets.only(right: 2.0),
            child: Icon(
              Icons.star_half,
              color: Colors.black38,
              size: 13.0,
            ));
      } else {
        return Container(
            margin: EdgeInsets.only(right: 2.0),
            child: Icon(
              Icons.star,
              color: Colors.black87,
              size: 13.0,
            ));
      }
    }

    return buildStar(dataIndex);
  }
}