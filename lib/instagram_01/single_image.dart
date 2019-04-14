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
          _sliverAppBar(context: context, imageId: widget.imageId),

          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(height: 20.0,),
                _listItem(
                  image: 'w1.jpg', name: 'Janet Martin',
                  comment: 'Our blue top is available!', likes: ''
                ),
                _listItem(
                    image: 'w2.jpg', name: 'Zarela Reed',
                    comment: 'Great 🔥 🔥', likes: '3 likes - Reply'
                ),
                _listItem(
                    image: 'm1.jpg', name: 'Jake Rachel',
                    comment: 'Lorem ipsum dolor sit amet', likes: ''
                ),
                _listItem(
                    image: 'w3.jpg', name: 'Eusebia Kresge',
                    comment: '😍 😍', likes: '10 likes - Reoply'
                ),
                _listItem(
                    image: 'm2.jpg', name: 'John Meis',
                    comment: 'Pro ex nonumes apeirian quaestio!', likes: '2 likes - Reply'
                )
              ]
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }
}

Widget _listItem({String image, String name, String comment, String likes}){
  return ListTile(
    contentPadding: EdgeInsets.only(
      left: 30.0,
      right: 20.0,
      top: 10.0,
      bottom: 10.0
    ),
    leading: Container(
      margin: EdgeInsets.zero,
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: Colors.white,
              width: 2.0
          ),
          image: DecorationImage(
              image: AssetImage('assets/images/people/$image'),
              fit: BoxFit.cover
          )
      ),
    ),

    title: Text(
      name,
      style: fntRoboto.copyWith(
        color: clFontLightPurple
      ),
    ),

    subtitle: Wrap(
      direction: Axis.vertical,
      spacing: 4.0,
      children: <Widget>[
        SizedBox(height: 2.0),

        Text(
          comment,
          style: fntRoboto.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w700
          ),
        ),

        Text(
          likes,
          style: fntRoboto.copyWith(
            color: clFontLightPurple,
            fontSize: 12.0
          ),
        )
      ],
    ),

    trailing: IconButton(
      icon: Icon(
        Icons.favorite_border,
        color: clGrey,
      ),
      onPressed: (){}
    ),
  );
}

Widget _sliverAppBar({
  BuildContext context, int imageId
}){
  return SliverAppBar(
    expandedHeight: MediaQuery.of(context).size.width + 70.0,
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
      preferredSize: Size.fromHeight(20.0),
      child: Padding(
        padding: EdgeInsets.only(
          left: 30.0,
          right: 30.0,
          bottom: 25.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 30.0,
              direction: Axis.horizontal,
              children: <Widget>[
                Wrap(
                  direction: Axis.horizontal,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 6.0,
                  children: <Widget>[
                    Icon(
                        Icons.favorite_border,
                        color: Colors.grey.shade300
                    ),
                    Text(
                      '2,203',
                      style: fntRoboto.copyWith(
                          color: Colors.white
                      ),
                    )
                  ],
                ),

                Wrap(
                  direction: Axis.horizontal,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 6.0,
                  children: <Widget>[
                    Icon(
                        Icons.chat_bubble_outline,
                        color: Colors.grey.shade300
                    ),
                    Text(
                      '15',
                      style: fntRoboto.copyWith(
                          color: Colors.white
                      ),
                    )
                  ],
                )
              ],
            ),

            Icon(
              Icons.bookmark_border,
              color: Colors.grey.shade300,
            )
          ],
        ),
      ),
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
                    image: AssetImage(pathImage + 'photo-$imageId.jpg'),
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
                      tag: 'photo-$imageId',
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
                                image: AssetImage(pathImage + 'photo-$imageId.jpg'),
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
  );
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