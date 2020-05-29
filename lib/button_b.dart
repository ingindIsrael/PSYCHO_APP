import 'package:flutter/material.dart';
import 'calendar_doctor.dart';



class ButtonB extends StatelessWidget {

  String buttonText = "Chat now";

  ButtonB(this.buttonText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(
          SnackBar(

            content: Text("Contacting your doctor, please wait..."),
          ),

        );
        Future.delayed(Duration(seconds: 3),(){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Calendar()),
          );
      }
        );
      },



      child: Container (
        margin: EdgeInsets.only(
        top: 30.0,
        left: 20.0,
        right: 20.0
        ),
            height: 50.0,
          width: 100.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
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
            gradient: LinearGradient(
            colors: [
              Color(0xff246d5e),
              Color(0xff6da398)
            ],
                begin: FractionalOffset(0.2,0.0),
                end: FractionalOffset(1.0,0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp
          )
        ),
          child: Center(
           child: Text(buttonText,
             style: TextStyle(
               fontSize: 14.0,
               fontWeight: FontWeight.bold,
               color: Colors.white
             ),

      ),
      ),
      ),
    );
  }

}