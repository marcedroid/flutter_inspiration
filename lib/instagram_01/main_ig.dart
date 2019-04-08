import 'package:flutter/material.dart';
import 'custom.dart';

class MainIg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(context),

      body: Center(
        child: Text('Center'),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: clBlack,
            ),
            title: Container(
              height: 4.0,
              margin: EdgeInsets.only(top: 5.0),
            )
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: clBlack,
            ),
            title: Container(
              height: 4.0,
              margin: EdgeInsets.only(top: 5.0),
            )
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: clBlack,
            ),
            title: Container(
              margin: EdgeInsets.only(top: 5.0),
              height: 4.0,
              child: Center(
                child: Container(
                  width: 4.0,
                  height: 4.0,
                  decoration: BoxDecoration(
                    color: clRed,
                    shape: BoxShape.circle
                  ),
                ),
              ),
            )
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: clBlack,
            ),
            title: Container(
              height: 4.0,
              margin: EdgeInsets.only(top: 5.0),
            )
          )
        ]
      ),
    );
  }
}

Widget _appBar(context){
  return AppBar(
    brightness: Brightness.light,

    leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: clFontBlack,
        ),
        onPressed: (){Navigator.pop(context);}
    ),

    title: Text(
      'Kylie jenner',
      style: TextStyle(
          color: clFontBlack
      ),
    ),

    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.more_horiz,
          color: clFontBlack,
        ),
        onPressed: null
      )
    ],

    centerTitle: false,
    backgroundColor: Colors.white,
    elevation: 0.0,
  );
}