import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {

  String pathImage = 'images/planA.jpg';
  CardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final card = Container(
      height: 350.0,
        width: 250.0,
        margin: EdgeInsets.only(
          top: 80.0,
          left: 20.0
        ),

      decoration: BoxDecoration(

          image: DecorationImage(
        fit: BoxFit.cover,
            image: AssetImage(pathImage)
      ),
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
          shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow (
            color: const Color(0xcc000000),
            offset: Offset(0, 2),
            blurRadius: 4,
          ),
          BoxShadow (
            color: const Color(0x80000000),
            offset: Offset(0, 6),
            blurRadius: 20,
          ),
        ],
      ),
    );

    return card;
  }

}