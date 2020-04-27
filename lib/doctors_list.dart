import 'package:flutter/material.dart';
import 'Espacio.dart';
import 'header_appbar.dart';
import 'doctor_card.dart';
import 'package:flutter/cupertino.dart';
import 'Header2.dart';

void main() => runApp(MyApp2());
class MyApp2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo2',

        home: Scaffold(
          body: Stack( children: <Widget>[

              ListView(
          children: <Widget>[
                Espacio(),

                DoctorCard("PhD Psicoanalisis", 'images/dr1.jpg',"University of Pensilvania","                              I thoroughly investigated the treatises on pain and "
                    "anguish, the hatred of silence and petty guilt, the texts of madness, "
                    "the pharmacopoeia of forgiveness and the impossible morality of "
                    "forgetting. I discovered the importance of anesthesia and pain relievers,"
                    " the interest of anxiolytics and neuroleptics, different generations of"
                    " antidepressants and other worse things I learned about lithium and"
                    " electroconvulsive therapy. The walls of the nosocomios, the bars of the"
                    " jail, the hospices of the seclusion and the kindness of the gardens I "
                    "visited and attended in different cultures.", "Dr. Anne Peterson"),
                DoctorCard("PhD Psicoanalisis", 'images/dr2.jpg', "National Univ. of Boston","                              I thoroughly investigated the treatises on pain and "
                    "anguish, the hatred of silence and petty guilt, the texts of madness, "
                    "the pharmacopoeia of forgiveness and the impossible morality of "
                    "forgetting. I discovered the importance of anesthesia and pain relievers,"
                    " the interest of anxiolytics and neuroleptics, different generations of"
                    " antidepressants and other worse things I learned about lithium and"
                    " electroconvulsive therapy. The walls of the nosocomios, the bars of the"
                    " jail, the hospices of the seclusion and the kindness of the gardens I "
                    "visited and attended in different cultures.", "Dr. Lakshmi Patel"),
                DoctorCard("PhD Psicoanalisis", 'images/dr3.jpg', "University of Texas","                              I thoroughly investigated the treatises on pain and "
                    "anguish, the hatred of silence and petty guilt, the texts of madness, "
                    "the pharmacopoeia of forgiveness and the impossible morality of "
                    "forgetting. I discovered the importance of anesthesia and pain relievers,"
                    " the interest of anxiolytics and neuroleptics, different generations of"
                    " antidepressants and other worse things I learned about lithium and"
                    " electroconvulsive therapy. The walls of the nosocomios, the bars of the"
                    " jail, the hospices of the seclusion and the kindness of the gardens I "
                    "visited and attended in different cultures.", "Dr. Pedro Urdaneta"),
                DoctorCard("PhD Psicoanalisis", 'images/dr4.jpg', "Politecnic Univ. of Nevada","                              I thoroughly investigated the treatises on pain and "
                    "anguish, the hatred of silence and petty guilt, the texts of madness, "
                    "the pharmacopoeia of forgiveness and the impossible morality of "
                    "forgetting. I discovered the importance of anesthesia and pain relievers,"
                    " the interest of anxiolytics and neuroleptics, different generations of"
                    " antidepressants and other worse things I learned about lithium and"
                    " electroconvulsive therapy. The walls of the nosocomios, the bars of the"
                    " jail, the hospices of the seclusion and the kindness of the gardens I "
                    "visited and attended in different cultures.", "Dr. Darling King"),
                DoctorCard("PhD Psicoanalisis", 'images/dr5.jpg', "University of Detoit","                              I thoroughly investigated the treatises on pain and "
                    "anguish, the hatred of silence and petty guilt, the texts of madness, "
                    "the pharmacopoeia of forgiveness and the impossible morality of "
                    "forgetting. I discovered the importance of anesthesia and pain relievers,"
                    " the interest of anxiolytics and neuroleptics, different generations of"
                    " antidepressants and other worse things I learned about lithium and"
                    " electroconvulsive therapy. The walls of the nosocomios, the bars of the"
                    " jail, the hospices of the seclusion and the kindness of the gardens I "
                    "visited and attended in different cultures.", "Dr. Yamal Tomson"),
                DoctorCard("PhD Psicoanalisis", 'images/dr6.jpg', "Langmore University", "                              I thoroughly investigated the treatises on pain and "
                    "anguish, the hatred of silence and petty guilt, the texts of madness, "
                    "the pharmacopoeia of forgiveness and the impossible morality of "
                    "forgetting. I discovered the importance of anesthesia and pain relievers,"
                    " the interest of anxiolytics and neuroleptics, different generations of"
                    " antidepressants and other worse things I learned about lithium and"
                    " electroconvulsive therapy. The walls of the nosocomios, the bars of the"
                    " jail, the hospices of the seclusion and the kindness of the gardens I "
                    "visited and attended in different cultures.", "Dr. Benazit Keiton")

        ]
              ),

            Header2(),
    ]
    )
        )

    );
  }
}