import 'package:animate_gradient/animate_gradient.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:malhar_2023/pages/events/events_dept_page.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

class IpaEventsPage extends StatefulWidget {
  const IpaEventsPage({super.key});

  @override
  State<IpaEventsPage> createState() => _IpaEventsPage();
}

class _IpaEventsPage extends State<IpaEventsPage> {
  final List<Widget> styleCards = [
    for (int i = 1; i < 3; i++)
      FlipCard(
        direction: FlipDirection.HORIZONTAL,
        front: Card(
          elevation: 50,
          shadowColor: Colors.purple[50],
          color: Colors.purple[50],
          child: SizedBox(
            width: 300,
            height: 500,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  //SizedBox

                  //CircleAvatar
                  const SizedBox(
                    height: 10,
                  ),
                  //  for (int j = 1; j < 3;j++)
                  if (i == 1)
                    Text(
                      'Sirf Sattar Second Hain Tumhare Pass',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.purple[900],
                        fontWeight: FontWeight.w500,
                      ), //Textstyle
                    ),
                  if (i == 2)
                    Text(
                      'Mehfil-e-Malhar',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.purple[900],
                        fontWeight: FontWeight.w500,
                      ), //Textstyle
                    ),

                  //Text
                  const SizedBox(
                    height: 10,
                  ),
                  if (i == 1)
                    Text(
                      "In eliminations, participants will get a chance to perform BollyFolk. In finals, this event features vibrant Indian folk dance, colorful costumes, and captivating storytelling, with participants performing on non-film folk music. The prop changes every 70 seconds in the choreography.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.deepPurple.shade900,
                      ), //Textstyle
                    ),
                  if (i == 2)
                    Text(
                      "In eliminations and finals, teams will perform Sufi, Ghazal, or Qawwali songs at Mehfil-e-Malhar, showcasing Indian music's rich heritage and spiritual resonance. Experience the beauty of Urdu and Persian verses.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.deepPurple.shade900,
                      ), //Textstyle
                    ),
                  //Text
                  const SizedBox(
                    height: 35,
                  ), //SizedBox
                  SizedBox(
                    width: 300,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.deepPurple.withOpacity(0.2),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                          //more than 50% of width makes circle
                          ),
                      child: const Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Click here for more info",
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ), //Column
            ), //Padding
          ), //SizedBox
        ),
        back: Card(
          elevation: 50,
          shadowColor: Colors.purple[50],
          color: Colors.purple[50],
          child: SizedBox(
            width: 300,
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    children: [
                      Text(
                        "No. of participants: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.purple[900]),
                      ),
                      Text(
                        "2 per team",
                        style:
                            TextStyle(fontSize: 15, color: Colors.purple[900]),
                      )
                    ],
                  ),
                  Wrap(
                    children: [
                      Text(
                        "Open to: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.purple[900]),
                      ),
                      Text(
                        "Contingents and PRNC (Not outstation)",
                        style:
                            TextStyle(fontSize: 15, color: Colors.purple[900]),
                      )
                    ],
                  ),
                  Wrap(
                    children: [
                      Text(
                        "Time Duration:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.purple[900]),
                      ),
                      Text(
                        "2.5 hours, Performance Time: 3-4 min ",
                        style:
                            TextStyle(fontSize: 15, color: Colors.purple[900]),
                      )
                    ],
                  ),
                  Wrap(
                    children: [
                      Text(
                        "Location:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.purple[900]),
                      ),
                      Text(
                        " Foyer",
                        style:
                            TextStyle(fontSize: 15, color: Colors.purple[900]),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 300,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.deepPurple.withOpacity(0.2),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                          //more than 50% of width makes circle
                          ),
                      child: const Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Tap to flip back",
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ), //Column
            ), //Padding
          ), //SizedBox
        ),
      ),
  ];
  PageController ipaController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff311b92),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EventsPage()),
                );
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
          backgroundColor: Color(0xff311b92),
          title: Text(
            "Ipa Events",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
      ),
      body: AnimateGradient(
        primaryColors: [
          Color(0xff311b92),
          Color(0xff452780),
          Color(0xff512da8),
        ],
        secondaryColors: [
          Color(0xff311b92),
          Color(0xff452780),
          Color(0xff512da8),
          // Color(0xff452780),
          // Color(0xff311b92),
        ],
        child: SafeArea(
          child: StackedCardCarousel(
            pageController: ipaController,
            initialOffset: 40,
            spaceBetweenItems: 500,
            items: styleCards,
          ),
        ),
      ),
    );
  }
}
