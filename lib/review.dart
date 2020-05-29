import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  String photog = "images/reviewer1.jpg";
  String info = "57 reviews, 31 photos";
  String coment = "Best profetionals ever! and fair price";
  String name = "Glenn Wess";

  Review(this.photog, this.info, this.coment, this.name);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final UserComent = Container(

      margin: EdgeInsets.only(
          left: 0.0
      ),
      child: Text(coment, textAlign: TextAlign.left, style: TextStyle(
          fontSize: 13.0
      ),),
    );

    final UserInfo = Container(
      margin: EdgeInsets.only(
          left: 0.0
    ),
    child: Text(info, textAlign: TextAlign.left, style: TextStyle(
    fontSize: 13.0
    ),),
    );

    final UserName = Container(
      margin: EdgeInsets.only(
        left: 0.0
      ),
      child: Text(name, textAlign: TextAlign.left, style: TextStyle(
        fontSize: 17.0
      ),),
    );



    final Photo = Container (
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
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
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(photog)
        )
      ),
    );

    final star = Container(
    margin: EdgeInsets.only(

    ),
      child: Icon(
        Icons.star,
        color: Colors.amberAccent,
      ),
    );
    final UserDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row( children: <Widget>[star, star, star, star, star]),
        UserName,
        UserInfo,
        UserComent
      ],
    );
    return Container(
        decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 0.5, color: Colors.grey))),
        child:
        Row (
      children: <Widget>[
        Photo,
        UserDetails,

      ],
    )
    );


  }

}