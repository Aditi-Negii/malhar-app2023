import 'package:animate_gradient/animate_gradient.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:malhar_2023/pages/events/events_dept_page.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

class MalharSpacesEventsPage extends StatefulWidget {
  const MalharSpacesEventsPage({super.key});

  @override
  State<MalharSpacesEventsPage> createState() => _MalharSpacesEventsPage();
}

class _MalharSpacesEventsPage extends State<MalharSpacesEventsPage> {
  final List<Widget> styleCards = [
    for (int i = 1; i < 4; i++)
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
                      '(Mal)Har ke Jeetne Wale ko Baazigar Kehte Hain',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.purple[900],
                        fontWeight: FontWeight.w500,
                      ), //Textstyle
                    ),
                  if (i == 2)
                    Text(
                      'Malharcade',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.purple[900],
                        fontWeight: FontWeight.w500,
                      ), //Textstyle
                    ),
                  if (i == 3)
                    Text(
                      'Gigglymics',
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
                      "Participants will explore the \"Eye of the Storm\" theme in their short films, capturing chaos and calmness while championing a social cause.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.deepPurple.shade900,
                      ), //Textstyle
                    ),
                  if (i == 2)
                    Text(
                      "Malharcade is a dual round gaming tournament meant to challenge your coordination and strategy.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.deepPurple.shade900,
                      ), //Textstyle
                    ),
                  //Text
                  if (i == 3)
                    Text(
                      " A single round competition features participants presenting humorous school experiences, showcasing real stories and spirited competition, enjoying an afternoon of reminiscing and showcasing the chaotic school life.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.deepPurple.shade900,
                      ), //Textstyle
                    ),
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
  PageController msController = PageController();

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
            "Malhar Spaces Events",
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
            pageController: msController,
            initialOffset: 40,
            spaceBetweenItems: 500,
            items: styleCards,
          ),
        ),
      ),
    );
  }
}