import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gradient2 extends StatelessWidget {

  String title = "The Mental Health App";

  Gradient2(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

      height: 100.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xff246d5e),

                Color(0xff6da398)

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
            fontSize: 35.0,
            fontWeight: FontWeight.bold
        ),
      ),

      alignment: Alignment(-0.9,0.6),
    );
  }

}