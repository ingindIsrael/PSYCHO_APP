import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'button_a.dart';

class Calendar extends StatefulWidget {

  @override
  _CalendarState createState()  =>   _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime selectedDate = DateTime.now();

  Future Fecha(BuildContext context) async {
    final DateTime _dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2030));
    if (_dateTime != null && _dateTime != selectedDate)
      setState(() {
        selectedDate = _dateTime;
      });
  }


  @override
  Widget build(BuildContext context) {
    String textoDr = "Doctor Fauchi is an excellent professional, congratulations on having decided to book an appointment with him, now you can choose the day you want to be seen and we will contact you to confirm the time of your meeting.";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text('Appointments', style: TextStyle(fontSize: 30, color: Colors.black),),
      ),
      body: Container(
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
        ) ),
      child:
      Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 50,left: 50, right: 50),
              child:
              Text(textoDr, textAlign: TextAlign.justify, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25), ),
            ),
            Text("You selected: \n", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
            Text("${selectedDate.toLocal()}".split(' ')[0], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
            SizedBox(height: 20.0,),
            Text(" as your apointment date", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
            SizedBox(height: 20.0,),
               Container(


                  margin: EdgeInsets.only(
                      top: 30.0,
                      left: 20.0,
                      right: 20.0
                  ),
                  height: 50.0,
                  width: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
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

                    child: RaisedButton(
                      child: Text("Select date", style: TextStyle(fontSize: 25),),
                      onPressed: () => Fecha(context),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(color: Colors.white),

                      ),


              ),
              ),

          ],
        ),
      ),
    )
    );
  }

}