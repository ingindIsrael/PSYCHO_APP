import 'package:flutter/material.dart';
import 'card_image.dart';


class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
        child: ListView(
          padding: EdgeInsets.all(25.0),
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CardImage('images/planA.jpg'),
            CardImage('images/planB.jpg'),
            CardImage('images/planC.jpg'),
            CardImage('images/planD.jpg')
          ],
        ),
    );
  }

}