import 'package:flutter/material.dart';
import 'my_appbar.dart';
import 'custom_values.dart';

class MainSocial01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context: context,),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _profile(),
          _counts(context),
          _feedImage()
        ],
      ),
      backgroundColor: Colors.white,
    );
  }//Build
}

Widget _profile(){
  return Padding(
    padding: EdgeInsets.only(
        top: 20.0,
        right: 30.0,
        bottom: 20.0,
        left: 30.0
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: 55.0,
          backgroundImage: AssetImage('assets/images/social_01/profile.jpg'),
        ),

        SizedBox(width: 30.0,),

        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Floyd Hayes",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontFamily: 'Lato',
                    color: black,
                    fontWeight: FontWeight.w900,
                    fontSize: 26.0
                ),
              ),

              SizedBox(height: 5.0,),

              Text(
                "Photographer",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontFamily: 'Lato',
                    //letterSpacing: 1.0,
                    color: grey,
                    fontSize: 18.0
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 25.0),
                    height: 30.0,
                    width: 110.0,
                    child: RaisedButton(
                      elevation: 0.0,
                      color: blue,
                      shape: StadiumBorder(),
                      child: Text(
                        "Follow",
                        style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 17.0,
                            fontWeight: FontWeight.normal
                        ),
                      ),
                      textColor: Colors.white,
                      onPressed: (){},
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 25.0, left: 10.0),
                    height: 30,
                    width: 55.0,
                    child: RaisedButton(
                        elevation: 0.0,
                        color: lightBlue,
                        shape: StadiumBorder(),
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                        onPressed: (){}
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _counts(BuildContext context){
  return Container(
    padding: EdgeInsets.symmetric(
        vertical: 35.0,
        horizontal: 40.0
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '210',
              style: _CustomNumberText.display1(context),
            ),
            SizedBox(height: 5.0,),
            Text(
              'Photos',
              style: _CustomNameText.subheading(context),
            )
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '15k',
              style: _CustomNumberText.display1(context),
            ),
            SizedBox(height: 5.0,),
            Text(
              'Followers',
              style: _CustomNameText.subheading(context),
            )
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '605',
              style: _CustomNumberText.display1(context),
            ),
            SizedBox(height: 5.0,),
            Text(
              'Following',
              style: _CustomNameText.subheading(context),
            )
          ],
        )
      ],
    ),
  );
}

Widget _feedImage(){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 25.0),
    child: GridView.count(
      crossAxisCount: 2,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: <Widget>[
        _ImageGridItem('assets/images/social_01/image-1.jpg'),
        _ImageGridItem('assets/images/social_01/image-2.jpg'),
        _ImageGridItem('assets/images/social_01/image-3.jpg'),
        _ImageGridItem('assets/images/social_01/image-4.jpg'),
        _ImageGridItem('assets/images/social_01/image-5.jpg'),
        _ImageGridItem('assets/images/social_01/image-6.jpg'),
        _ImageGridItem('assets/images/social_01/image-7.jpg'),
        _ImageGridItem('assets/images/social_01/image-8.jpg'),
        _ImageGridItem('assets/images/social_01/image-9.jpg'),
        _ImageGridItem('assets/images/social_01/image-10.jpg'),
      ],
    ),
  );
}

Widget _ImageGridItem(String imagePath) {
  return Image(
    image: AssetImage(imagePath),
    fit: BoxFit.cover,
  );
}

class _CustomNumberText {
  static TextStyle display1(BuildContext context){
    return Theme.of(context).textTheme.display1.copyWith(
      color: black,
      fontSize: 24.0,
      fontWeight: FontWeight.w500
    );
  }
}

class _CustomNameText {
  static TextStyle subheading(BuildContext context){
    return Theme.of(context).textTheme.caption.copyWith(
      color: grey,
      fontSize: 14.0
    );
  }
}