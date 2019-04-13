import 'package:flutter/material.dart';
import 'custom.dart';
import 'dart:ui';

class SingleImage extends StatefulWidget {
  final int imageId;
  SingleImage(this.imageId);

  @override
  _SingleImageState createState() => _SingleImageState();
}

class _SingleImageState extends State<SingleImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clDarkPurple,
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.width + 50.0,
            //expandedHeight: 300.0,
            primary: true,
            floating: false,
            pinned: false,
            snap: false,
            brightness: Brightness.dark,
            elevation: 0.0,
            backgroundColor: Colors.transparent,

            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: (){Navigator.pop(context);}
            ),

            title: Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2.0
                ),
                image: DecorationImage(
                  image: AssetImage(pathImage + 'profile.jpg')
                )
              ),
            ),
            centerTitle: true,

            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
                onPressed: null,
              )
            ],

            bottom: PreferredSize(
              child: Text("Hola", style: TextStyle(color: Colors.white),),
              preferredSize: Size.fromHeight(20.0)
            ),

            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0)
                ),
                child: Stack(
                  children: <Widget>[
                    ConstrainedBox(
                      constraints: BoxConstraints.expand(),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(pathImage + 'photo-${widget.imageId}.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),

                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 25.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent.withOpacity(0.2)
                            ),
                          ),
                        ),
                      ),
                    ),

                    SafeArea(
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 25.0
                          ),
                          child: AspectRatio(
                            aspectRatio: 1.1,
                            child: Hero(
                              transitionOnUserGestures: false,
                              tag: 'photo-${widget.imageId}',
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 8.0,
                                          offset: Offset(5.0, 5.0)
                                      )
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage(pathImage + 'photo-${widget.imageId}.jpg'),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Container(
              child: Text("Box", style: TextStyle(color: Colors.white),),
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }
}

Widget _bottomNavigationBar(){
  return BottomAppBar(
    color: clDarkPurple,
    child: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0
      ),
      child: InputChip(
          onPressed: (){},
          backgroundColor: Colors.white,
          avatar: CircleAvatar(
            radius: 15.0,
            backgroundImage: AssetImage('assets/images/me.jpg'),
          ),
          label: TextField(
            keyboardType: TextInputType.text,
            style: fntRoboto.copyWith(
                color: clFontBlack,
                fontWeight: FontWeight.w500
            ),
            decoration: InputDecoration(
                hintText: "Add a comment...",
                hintStyle: fntRoboto.copyWith(
                  color: clFontLightGrey,
                  fontWeight: FontWeight.w500,
                ),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none
            ),
          )
      ),
    ),
  );
}