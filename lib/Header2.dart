import 'package:flutter/material.dart';
import 'Gradient2.dart';
import 'card_image_list.dart';

class Header2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        Gradient2("Our Doctors"),
       // CardImageList()
      ],
    );
  }

}