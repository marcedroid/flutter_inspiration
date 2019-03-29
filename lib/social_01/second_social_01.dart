import 'package:flutter/material.dart';
import 'custom_values.dart';

class SecondSocial01 extends StatelessWidget {
  final int heroImage;
  SecondSocial01({this.heroImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverAppBar(
            primary: true,
            floating: false,
            snap: false,
            pinned: true,
            expandedHeight: MediaQuery.of(context).size.height * 0.5,

            elevation: 0.0,
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: purpleGrey,
                ),
                onPressed: (){
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
                      image: AssetImage('assets/images/social_01/image-${heroImage+1}.jpg')
                  ),
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(
                  left: 25.0,
                  right: 25.0,
                  top: 50.0
              ),
              child: Column(
                children: <Widget>[
                  Text("Hola")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
