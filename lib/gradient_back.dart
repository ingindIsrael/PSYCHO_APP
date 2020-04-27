import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {

  String title = "The Mental Health App";

  GradientBack(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

      height: 250.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff246d5e),
            //246D5E
            Color(0xff6da398)
            //6DA398
          ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp
        )
      ),
      child: Text(title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 25.0,
        fontWeight: FontWeight.bold
      ),
      ),

      alignment: Alignment(-0.9,-0.6),
    );
  }

}