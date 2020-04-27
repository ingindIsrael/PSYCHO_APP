import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'button_b.dart';

class DoctorCard extends StatelessWidget {

  String photodoc = 'images/dr1.jpg';
  String univdoc = "University of Pensilvania";
  String comentdoc = "I thoroughly investigated the treatises on pain and "
      "anguish, the hatred of silence and petty guilt, the texts of madness, "
      "the pharmacopoeia of forgiveness and the impossible morality of "
      "forgetting. I discovered the importance of anesthesia and pain relievers,"
      " the interest of anxiolytics and neuroleptics, different generations of"
      " antidepressants and other worse things I learned about lithium and"
      " electroconvulsive therapy. The walls of the nosocomios, the bars of the"
      " jail, the hospices of the seclusion and the kindness of the gardens I "
      "visited and attended in different cultures.";
  String namedoc = "Glenn Wess";
  String specdoc = "Doctor";


  DoctorCard(this.specdoc, this.photodoc, this.univdoc, this.comentdoc, this.namedoc);

  @override
  Widget build(BuildContext context) {

    // TODO: implement build


    final DoctorComent = Container(
      margin: EdgeInsets.only(
          left: 20.0,
        right: 20.0,
        bottom: 10.0,
      ),
      child: Text( comentdoc, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13.0),
        textAlign: TextAlign.justify,
      ),
      );


    final DoctorUniv = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(univdoc, textAlign: TextAlign.left, style: TextStyle(
          fontSize: 13.0
      ),),
    );

    final DoctorSpec = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(specdoc, textAlign: TextAlign.left, style: TextStyle(
          fontSize: 13.0
      ),),
    );

    final DoctorName = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(namedoc, textAlign: TextAlign.left, style: TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.bold
      ),),
    );

    final DoctorDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DoctorName,
        DoctorUniv,
        DoctorSpec
      ],
    );

    final DoctorPhoto = Container (
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0
      ),
      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(photodoc)
          )
      ),
    );

    final ficha = Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              DoctorPhoto,
              DoctorDetails,
              ButtonB("Chat now")
            ],
          ),
          DoctorComent
         // ButtonA("Why Psychopapp?")
        ],
      ),
    );

    return ficha;

      //Row(
      //children: <Widget>[
       // DoctorPhoto,
        //DoctorDetails
     // ],
    //);

  }
        }


