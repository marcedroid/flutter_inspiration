import 'package:flutter/material.dart';
import 'custom_values.dart';
import 'my_bottom_navigation.dart';

class SecondSocial01 extends StatelessWidget {
  final int heroImage;
  SecondSocial01({this.heroImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: MyBottomNavigation(),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          _sliverAppBar(context, heroImage),
          _sliverContent()
        ],
      ),
    );
  }
}

Widget _sliverAppBar(BuildContext context, int heroImage) {
  return SliverAppBar(
    primary: true,
    floating: false,
    snap: false,
    pinned: true,
    expandedHeight: MediaQuery
        .of(context)
        .size
        .height * 0.5,

    elevation: 0.0,
    brightness: Brightness.light,
    backgroundColor: Colors.white,
    leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: purpleGrey,
        ),
        onPressed: () {
          Navigator.pop(context);
        }
    ),
    actions: <Widget>[
      Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Icon(
          Icons.fullscreen,
          color: purpleGrey,
        ),
      )
    ],

    flexibleSpace: FlexibleSpaceBar(
      background: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50.0),
            bottomRight: Radius.circular(50.0)
        ),
        child: Hero(
          transitionOnUserGestures: false,
          tag: 'HeroImage$heroImage',
          child: Image(
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
              image: AssetImage(
                  'assets/images/social_01/image-${heroImage + 1}.jpg')
          ),
        ),
      ),
    ),
  );
}

Widget _sliverContent(){
  return SliverToBoxAdapter(
    child: Container(
      margin: EdgeInsets.only(
          left: 35.0,
          right: 35.0,
          top: 40.0
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _titleAndIcon(),
          _loremIpsum(),
          _tags()
        ],
      ),
    ),
  );
}

Widget _titleAndIcon() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Eiffel Tower',
            style: TextStyle(
                color: black,
                fontFamily: 'Lato',
                fontSize: 34.0,
                fontWeight: FontWeight.w900
            ),
          ),

          SizedBox(height: 7.0,),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.location_on,
                color: darkGrey,
              ),

              SizedBox(width: 5.0,),

              Text(
                'Paris, France',
                style: TextStyle(
                    color: grey,
                    fontFamily: 'Roboto',
                    fontSize: 15.0
                ),
              )
            ],
          )
        ],
      ),
      Container(
        padding: EdgeInsets.all(18.0),
        decoration: BoxDecoration(
            color: blue,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(6.0),
                topRight: Radius.circular(24.0),
                bottomLeft: Radius.circular(24.0),
                bottomRight: Radius.circular(24.0)
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: blueShadow,
                  offset: Offset(0.0, 3.0),
                  blurRadius: 6.0
              )
            ]
        ),
        child: Icon(
          Icons.cloud_download,
          size: 30.0,
          color: Colors.white,
        ),
      )
    ],
  );
}

Widget _loremIpsum(){
  return Container(
    margin: EdgeInsets.only(
      top: 25.0,
      bottom: 15.0
    ),
    child: Text(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vel turpis a urna pulvinar feugiat.',
      style: TextStyle(
          fontFamily: 'Lato',
          color: Colors.black87,
          fontSize: 15.0,
          height: 1.1,
          fontWeight: FontWeight.w600
      ),
    ),
  );
}

Widget _tags(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      RawMaterialButton(
        shape: StadiumBorder(),
        constraints: BoxConstraints(
          minHeight: 32.0
        ),
        elevation: 0.0,
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        fillColor: lightGrey,
        onPressed: (){},
        child: Text(
          '#photography',
          style: TextStyle(
            color: darkGrey,
            fontFamily: 'Roboto',
            fontSize: 15.0,
            fontWeight: FontWeight.w600
          ),
        ),
      ),

      SizedBox(width: 10.0,),

      RawMaterialButton(
        shape: StadiumBorder(),
        constraints: BoxConstraints(
            minHeight: 32.0
        ),
        elevation: 0.0,
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        fillColor: lightGrey,
        onPressed: (){},
        child: Text(
          '#sea',
          style: TextStyle(
              color: darkGrey,
              fontFamily: 'Roboto',
              fontSize: 15.0,
              fontWeight: FontWeight.w600
          ),
        ),
      )
    ],
  );
}