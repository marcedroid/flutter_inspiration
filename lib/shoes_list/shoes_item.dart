import 'package:flutter/material.dart';
import 'stars_generator.dart';

class ShoesItem extends StatelessWidget{

  final String imagePath;
  final int dataColor;
  final dataStars;
  final dataPrice;

  ShoesItem(this.dataColor, this.imagePath, this.dataStars, this.dataPrice);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Stack(
              alignment: Alignment.topLeft,
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 30.0),
                  width: 200.0,
                  height: 220.0,
                  decoration: BoxDecoration(
                      color: Color(dataColor),
                      borderRadius: BorderRadius.all(Radius.circular(70.0))
                  ),
                ),

                Positioned(
                  right: -70.0,
                  top: -25.0,
                  child: Container(
                    width: 260.0,
                    height: 260.0,
                    alignment: Alignment.topRight,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imagePath),
                            fit: BoxFit.contain
                        )
                    ),
                  ),
                ),

                Positioned(
                  top: 28.0,
                  child: Container(
                    width: 45.0,
                    height: 45.0,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.only(
                  bottom: 50.0
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      "\$$dataPrice",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 42.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 7.0),
                    child: Text(
                      "Review :",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ),

                  Row(
                    children: List.generate(5, (index) => StarsGenerator(dataStars, index)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }

}