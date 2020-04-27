import 'package:flutter/material.dart';
import 'button_a.dart';

class DescriptionPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String lorem = "One of every four people in the world suffers or will"
        " suffer from some psychological disorder in their life. And half may "
        "not receive adequate treatment or no treatment at all. Living with"
        " depression and panic attacks is NOT normal. Doing therapy should not "
        "be expensive or take hours of commuting. Psychopapp brings "
        "psychoanalysis to a new level, allows you to do therapy with the best "
        "professionals from home and at a fraction of the price.";

    final description = Container(
      margin: EdgeInsets.only(
          top:15,
          left: 20.0,
          right: 20.0
      ),
      child: Text(
        lorem,
        style: TextStyle(
          fontSize: 15.0,
        ),
        textAlign: TextAlign.justify,
      ),
    );

    final title_stars = Row (
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 350.0,
            left: 20.0,
            right: 20.0),
          child: Text("Download now here!", style: TextStyle(
                                                  fontSize: 25.0,
                                                  color: Colors.lightGreen,
                                                  fontWeight: FontWeight.w900
                                                         ),
                                               textAlign: TextAlign.left,

        ),
        )//quiero colocar un boton aqui

      ],
    );

    final content = Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              title_stars
            ],
          ),
          description,
          ButtonA("Our Doctors")
        ],
      ),
    );
    return content;

  }

}