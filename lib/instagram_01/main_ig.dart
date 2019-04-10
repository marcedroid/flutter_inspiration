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

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 65.0,
        height: 65.0,
        child: FloatingActionButton(
          elevation: 5.0,
          backgroundColor: Colors.transparent,
          onPressed: (){},
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          clOrange,
                          clPinkPurple
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight
                    ),
                    shape: BoxShape.circle
                ),
              ),

              Center(
                child: Icon(
                  Icons.add,
                  size: 30.0,
                ),
              )
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        notchMargin: 10.0,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _navigationItem(false, Icons.home),
            _navigationItem(false, Icons.search),
            Expanded(
              child: SizedBox(
                height: 60.0,
              ),
            ),
            _navigationItem(true, Icons.favorite_border),
            _navigationItem(false, Icons.person_outline),
          ],
        ),
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

Widget _navigationItem(bool showDot, IconData icon){
  return Expanded(
    child: SizedBox(
      height: 60.0,
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          customBorder: CircleBorder(),
          onTap: (){},
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                color: clBlack,
              ),
              Container(
                height: 4.0,
                margin: EdgeInsets.only(top: 5.0),
                child: showDot ? Center(
                  child: Container(
                    width: 4.0,
                    height: 4.0,
                    decoration: BoxDecoration(
                        color: clRed,
                        shape: BoxShape.circle
                    ),
                  ),
                ):null,
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget _bottomNavigationBar(){
  return BottomNavigationBar(
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
  );
}