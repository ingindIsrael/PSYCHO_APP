import 'package:flutter/material.dart';
import 'doctors_list.dart';




class ButtonA extends StatelessWidget {

  String buttonText = "Why Psychopapp?";

  ButtonA( this.buttonText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Loading the next page for you, please wait..."),
        ),
        );
        Future.delayed(Duration(seconds: 3),(){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyApp2()),
          );
        }
        );



      },
      child:
      Container (
        margin: EdgeInsets.only(
        top: 30.0,
        left: 20.0,
        right: 20.0
        ),
            height: 50.0,
          width: 180.0,
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
          borderRadius: BorderRadius.circular(30.0),
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
               fontSize: 18.0,
               color: Colors.white
             ),

      ),
      ),
      ),
    );
  }

}