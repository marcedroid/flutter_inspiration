import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'single_image.dart';
import 'custom.dart';

class MainIg extends StatelessWidget {

  ScrollController _scrollController = new ScrollController();

  List<Widget> _items = new List.generate(60, (index) {
    return new Text("item $index");
  });

  @override
  Widget build(BuildContext context) {
    /*
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(context),

      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _header(),
          _numbers(),
          _follow(),
          _listCircles(),
          _gridPhotos(context)
        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: __floatingActionButton(),
      bottomNavigationBar: _bottomAppBar()
    );
    */
    return Stack(
      children: <Widget>[
        Scaffold(
          backgroundColor: Colors.white,
          appBar: _appBar(context),

          body: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              _header(),
              _numbers(),
              _follow(),
              _listCircles(),
              _gridPhotos(context)
            ],
          ),
        ),

        Positioned(
          child: Container(
            margin:EdgeInsets.only(top: MediaQuery.of(context).size.height - 90.0),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
              floatingActionButton: __floatingActionButton(),
              bottomNavigationBar: _bottomAppBar()
            ),
          ),
        )
      ],
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
      'kylie jenner',
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

Widget _header(){
  return Container(
    margin: EdgeInsets.only(
      left: 35.0,
      right: 35.0,
      top: 15.0,
      bottom: 5.0
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 90.0,
          height: 90.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black38,
                blurRadius: 14.0,
                offset: Offset(0.0, 6.0)
              )
            ],
            image: DecorationImage(
              image: AssetImage(pathImage + 'profile.jpg')
            )
          ),
        ),

        Padding(
          padding: EdgeInsets.only(
            left: 30.0,
          ),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            spacing: 5.0,
            direction: Axis.vertical,
            children: <Widget>[
              Text(
                'kylie jenner',
                style: fntRoboto.copyWith(
                  color: clFontBlack,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500
                ),
              ),

              Text(
                'Fashion',
                style: fntRoboto.copyWith(
                  color: clFontLightGrey,
                  fontWeight: FontWeight.w300
                ),
              ),

              Text(
                'Models',
                style: fntRoboto.copyWith(
                  color: clFontGrey
                ),
              ),

              Text(
                'www.thekyliejenner.com',
                style: fntRoboto.copyWith(
                  color: clLink
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}//header

Widget _numbers(){
  return Container(
    margin: EdgeInsets.symmetric(
      horizontal: 35.0,
      vertical: 20.0
    ),
    child: Column(
      children: <Widget>[
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20.0
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _wrapNumbers('490', 'Posts'),
              _wrapNumbers('120k', 'Followers'),
              _wrapNumbers('80k', 'Following'),
            ],
          ),
        ),
        Divider(),
      ],
    ),
  );
}//numbers
Widget _wrapNumbers(String customNumber, String customtext){
  return Wrap(
    direction: Axis.vertical,
    crossAxisAlignment: WrapCrossAlignment.center,
    spacing: 8.0,
    children: <Widget>[
      Text(
        customNumber,
        style: fntRoboto.copyWith(
            color: clFontBlack,
            fontWeight: FontWeight.w700,
            fontSize: 18.0
        ),
      ),

      Text(
        customtext,
        style: fntRoboto.copyWith(
            color: clFontLightGrey,
            letterSpacing: 1.0,
            fontSize: 13.0
        ),
      )
    ],
  );
}

Widget _follow(){
  return Container(
    margin: EdgeInsets.symmetric(
      horizontal: 35.0
    ),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Container(
            height: 56.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              gradient: LinearGradient(
                colors: [
                  clBlue, clPurple
                ]
              )
            ),
            child: FlatButton(
              onPressed: (){},
              textColor: Colors.white,
              child: Text(
                'Follow',
                style: fntRoboto.copyWith(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700
                ),
              ),
            ),
          )
        ),

        SizedBox(width: 20.0),

        Container(
          height: 56.0,
          width: 75.0,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: clLightGrey,
            borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          child: FlatButton(
            textColor: Colors.white,
            onPressed: (){},
            child: Icon(
              Icons.send,
              color: clGrey,
            )
          ),
        )
      ],
    ),
  );
}//_follow

Widget _listCircles(){
  return Container(
    height: 80.0,
    margin: EdgeInsets.symmetric(
      vertical: 20.0
    ),
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        _miniCircle(
            showPlus: true, imagePath: pathImage + 'mini-1.jpeg',
            marginLeft: 35.0, isBordered: false
        ),
        _miniCircle(
            showPlus: false, imagePath: pathImage + 'mini-2.jpeg',
            marginLeft: 15.0, isBordered: false
        ),
        _miniCircle(
            showPlus: false, imagePath: pathImage + 'mini-3.jpeg',
            marginLeft: 15.0, isBordered: false
        ),
        _miniCircle(
            showPlus: false, imagePath: pathImage + 'mini-4.jpeg',
            marginLeft: 15.0, isBordered: true
        ),
        _miniCircle(
            showPlus: false, imagePath: pathImage + 'mini-5.jpeg',
            marginLeft: 15.0, isBordered: true
        ),
        _miniCircle(
            showPlus: false, imagePath: pathImage + 'mini-6.jpeg',
            marginLeft: 15.0, isBordered: true
        ),
        _miniCircle(
            showPlus: false, imagePath: pathImage + 'mini-7.jpeg',
            marginLeft: 15.0, isBordered: false
        ),
        _miniCircle(
            showPlus: false, imagePath: pathImage + 'mini-8.jpeg',
            marginLeft: 15.0, isBordered: false
        ),
        _miniCircle(
            showPlus: false, imagePath: pathImage + 'mini-9.jpeg',
            marginLeft: 15.0, isBordered: true
        ),
        _miniCircle(
            showPlus: false, imagePath: pathImage + 'mini-10.jpeg',
            marginLeft: 15.0, isBordered: true
        ),
      ],
    ),
  );
}//_listCircles
Widget _miniCircle({
    bool showPlus, String imagePath, double marginLeft, bool isBordered
  }){

  if(isBordered){
    return Container(
      margin: EdgeInsets.only(
          left: marginLeft,
          right: 15.0
      ),
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 8.0,
                offset: Offset(0.0, 2.0)
            )
          ],
          gradient: LinearGradient(
              colors: [
                clOrange, clPinkPurple
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight
          )
      ),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: 56.0,
            height: 56.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(imagePath)
              ),
              border: Border.all(
                color: Colors.white,
                width: 2.0
              )
            ),
          )
        ],
      ),
    );
  }else{
    return Container(
      margin: EdgeInsets.only(
          left: marginLeft,
          right: 15.0
      ),
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 8.0,
                offset: Offset(0.0, 2.0)
            )
          ],
      ),
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(imagePath)
                )
            ),
          ),
          
          showPlus ? Positioned(
            bottom: 5.0,
            right: -3.0,
            child: Container(
              width: 24.0,
              height: 24.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: clBlack,
                  border: Border.all(
                      color: Colors.white,
                      width: 2.0
                  )
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 16.0,
              ),
            ),
          ):SizedBox(height: 0.0,)
        ],
      ),
    );
  }
}//_miniCircle

Widget _gridPhotos(BuildContext context){
  return Container(
    margin: EdgeInsets.only(
      left: 20.0,
      right: 20.0,
      bottom: 60.0
    ),
    child: StaggeredGridView.count(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      crossAxisCount: 3,
      children: <Widget>[
        _imagePhoto(context: context, imageUrl: '${pathImage}photo-1.jpg', index: 1),
        _imagePhoto(context: context, imageUrl: '${pathImage}photo-2.jpg', index: 2),
        _imagePhoto(context: context, imageUrl: '${pathImage}photo-3.jpg', index: 3),
        _imagePhoto(context: context, imageUrl: '${pathImage}photo-4.jpg', index: 4),
        _imagePhoto(context: context, imageUrl: '${pathImage}photo-5.jpg', index: 5),
        _imagePhoto(context: context, imageUrl: '${pathImage}photo-6.jpg', index: 6),
        _imagePhoto(context: context, imageUrl: '${pathImage}photo-7.jpg', index: 7),
        _imagePhoto(context: context, imageUrl: '${pathImage}photo-8.jpg', index: 8),
        _imagePhoto(context: context, imageUrl: '${pathImage}photo-9.jpg', index: 9),
        _imagePhoto(context: context, imageUrl: '${pathImage}photo-10.jpg', index: 10),
      ],
      staggeredTiles: [
        StaggeredTile.count(1, 1),
        StaggeredTile.count(1, 1),
        StaggeredTile.count(1, 1),
        StaggeredTile.count(1, 1),
        StaggeredTile.count(2, 2),
        StaggeredTile.count(1, 1),
        StaggeredTile.count(2, 2),
        StaggeredTile.count(1, 1),
        StaggeredTile.count(1, 1),
        StaggeredTile.count(3, 3),
      ],
    )
  );
}//_gridPhotos

Widget _imagePhoto({
  BuildContext context, String imageUrl, int index
}){
  return ClipRRect(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
    child: GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => SingleImage(index)
        ));
      },
      child: Hero(
        tag: 'photo-$index',
        child: Image(
          image: AssetImage(imageUrl)
        ),
      ),
    ),
  );
}//_imagePhoto

Widget __floatingActionButton(){
  return SizedBox(
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
  );
}//_floatingActionButton

Widget _bottomAppBar(){
  return BottomAppBar(
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
  );
}//_bottomAppBar

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