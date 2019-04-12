import 'package:flutter/material.dart';
import 'custom.dart';

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
      backgroundColor: Colors.white,
      body: Center(
        child: Text(widget.imageId.toString()),
      ),
      bottomNavigationBar: BottomAppBar(
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
              backgroundImage: AssetImage('assets/images/instagram_01/profile.jpg'),
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
      ),
    );
  }
}
