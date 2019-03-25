import 'package:flutter/material.dart';
import 'package:inspiration_design/social_01/main_social_01.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inspiration"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            menuItem("Social 01", context, MainSocial01())
          ],
        ),
      ),
    );
  }
}

Widget menuItem (String btnText, BuildContext context, Widget widget){
  return RaisedButton(
    color: Colors.blue,
    textColor: Colors.white,
    child: Text(btnText),
    onPressed: (){
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => widget
      ));
    },
  );
}
