import 'package:flutter/material.dart';
import 'shoes_item.dart';
import 'project_config.dart';
import 'header.dart';

class ShoesItemList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    final render = Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Header(),
          ShoesItem(ProjectConfig.clPurple,"assets/images/shoes_list/zapato-2.png", 4, 84),
          ShoesItem(ProjectConfig.clPink,"assets/images/shoes_list/zapato-5.png", 5, 78),
          ShoesItem(ProjectConfig.clWine,"assets/images/shoes_list/zapato-1.png", 3, 67),
          ShoesItem(ProjectConfig.clOrange,"assets/images/shoes_list/zapato-4.png", 4, 93),
          ShoesItem(ProjectConfig.clGreen,"assets/images/shoes_list/zapato-3.png", 5, 80),
        ],
      ),
    );

    return render;
  }

}