import 'package:flutter/material.dart';
import 'project_config.dart';
import 'shoes_list.dart';

class MainShoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(ProjectConfig.clBg),
      appBar: AppBar(
        elevation: 0.0,
        brightness: Brightness.light,
        backgroundColor: const Color(ProjectConfig.clBg),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black87
                )
            );
          }
        ),
      ),

      body: ShoesItemList(),
    );
  }
}
