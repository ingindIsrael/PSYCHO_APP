import 'package:flutter/material.dart';

class Espacio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final description = Container(
      margin: EdgeInsets.only(
          top:80,
          left: 20.0,
          right: 20.0
      ),
    );

    final content = Container(
      child: Column(
        children: <Widget>[
          description,
        ],
      ),
    );
    return content;

  }

}