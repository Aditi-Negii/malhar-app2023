import 'package:animate_gradient/animate_gradient.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:malhar_2023/pages/events/events_dept_page.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

class WpaEventsPage extends StatefulWidget {
  const WpaEventsPage({super.key});

  @override
  State<WpaEventsPage> createState() => _WpaEventsPage();
}

List<String> wpaEventName = [
  'Chordially Yours: Across the Octaverse'
      'Harmonic Havoc'
];

class _WpaEventsPage extends State<WpaEventsPage> {
  // final List<String> wpaEventName = [
  //   'Chordially Yours: Across the Octaverse'
  //       'Harmonic Havoc'
  // ];
  final List<Widget> styleCards = [
    for (int i = 1; i < 5; i++)
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //SizedBox

                  //CircleAvatar

                  //  for (int j = 1; j < 3;j++)
                  if (i == 1)
                    Text(
                      'Chordially Yours: Across the Octaverse',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.ptSans(
                        fontSize: 24,
                        color: Colors.purple[900],
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  if (i == 2)
                    Text(
                      'Harmonic Havoc',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.ptSans(
                        fontSize: 24,
                        color: Colors.purple[900],
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  if (i == 3)
                    Text(
                      'Trifecta',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.ptSans(
                        fontSize: 24,
                        color: Colors.purple[900],
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  if (i == 4)
                    Text(
                      'Sentimental Silhouettes',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.ptSans(
                        fontSize: 24,
                        color: Colors.purple[900],
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  //Text

                  if (i == 1)
                    Text(
                        'For eliminations, bands must submit their videos starting with all their instruments, gradually dropping their instruments at creative time intervals till there are none left. However, the vocals can remain throughout. In finals,the Octaverse showcases the essence of sonority, showcasing the richness of sound through melodies crafted using everyday objects. The finalists must incorporate these objects for at least 4 minutes in their performance.',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.robotoCondensed(
                          color: Colors.deepPurple.shade900,
                          fontSize: 16,
                        )
                        //Textstyle
                        ),
                  if (i == 2)
                    Text(
                        "In eliminations, participants must deliver an impactful rap-inspired performance, aiming to advance to the finals and face a raging crowd at Malhar '23. In finals, participants will showcase their creativity by presenting a full version of their composition, incorporating word prompts into their lyrics, pairing up with a perfect vocal counterpart to craft an original fusion of rap and singing.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.robotoCondensed(
                          color: Colors.deepPurple.shade900,
                          fontSize: 16,
                        )),
                  if (i == 3)
                    Text(
                        "In eliminations, participants choose a dance form from a list of Western folk and classical dance styles provided and send their routine. In finals, the event features a mashup of three songs, blending three diverse dance forms, with one segment dedicated to Western classical/folk dance chosen for eliminations, and performers choosing their preferred Western forms for the remaining two segments.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.robotoCondensed(
                          color: Colors.deepPurple.shade900,
                          fontSize: 16,
                        )),
                  if (i == 4)
                    Text(
                        "The event involves group members portraying emotions through 4-6-minute stories, with performers behind a curtain, combining shadows, stories, music, and graceful dance moves to captivate the audience.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.robotoCondensed(
                          color: Colors.deepPurple.shade900,
                          fontSize: 16,
                        )), //Text
                  //SizedBox
                  SizedBox(
                    width: 300,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.deepPurple.withOpacity(0.2),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                          //more than 50% of width makes circle
                          ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Click here for more info",
                            style: GoogleFonts.ptSans(
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
                      Text("No. of participants: ",
                          style: GoogleFonts.robotoCondensed(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.purple[900])),
                      Text("2 per team",
                          style: GoogleFonts.robotoCondensed(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.purple[900]))
                    ],
                  ),
                  Wrap(
                    children: [
                      Text("Open to: ",
                          style: GoogleFonts.robotoCondensed(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.purple[900])),
                      Text("Contingents and PRNCs",
                          style: GoogleFonts.robotoCondensed(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.purple[900]))
                    ],
                  ),
                  Wrap(
                    children: [
                      Text("Type number:",
                          style: GoogleFonts.robotoCondensed(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.purple[900])),
                      if (i == 1)
                        Text("Group Event(4-7 members)",
                            style: GoogleFonts.robotoCondensed(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.purple[900])),
                      if (i == 2)
                        Text("Duet Event",
                            style: GoogleFonts.robotoCondensed(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.purple[900])),
                      if (i == 3)
                        Text("Group Event(9-19 members)",
                            style: GoogleFonts.robotoCondensed(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.purple[900])),
                      if (i == 4)
                        Text("Group Event(2-4 members)",
                            style: GoogleFonts.robotoCondensed(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.purple[900]))
                    ],
                  ),
                  Wrap(
                    children: [
                      Text("Audience:",
                          style: GoogleFonts.robotoCondensed(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.purple[900])),
                      Text("Allowed for finals",
                          style: GoogleFonts.robotoCondensed(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.purple[900])),
                      if (i == 4)
                        Text(" Allowed",
                            style: GoogleFonts.robotoCondensed(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.purple[900]))
                    ],
                  ),
                  Wrap(
                    children: [
                      Text("Event Cap:",
                          style: GoogleFonts.robotoCondensed(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.purple[900])),
                      Text("Eliminations: 20 entries, Finals: 10 entries",
                          style: GoogleFonts.robotoCondensed(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.purple[900])),
                      if (i == 4)
                        Text(" Eliminations: 10 entries, Finals: 10 entries",
                            style: GoogleFonts.robotoCondensed(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.purple[900]))
                    ],
                  ),
                  Wrap(
                    children: [
                      Text("Max reg. per contingent:",
                          style: GoogleFonts.robotoCondensed(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.purple[900])),
                      Text("1 entry",
                          style: GoogleFonts.robotoCondensed(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.purple[900]))
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
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Tap to flip back",
                            style: GoogleFonts.ptSans(
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

  PageController wpaController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff311b92),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
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
            "Wpa Events",
            style: GoogleFonts.ptSans(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
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
        ],
        child: SafeArea(
          child: StackedCardCarousel(
            pageController: wpaController,
            initialOffset: 40,
            spaceBetweenItems: 500,
            items: styleCards,
          ),
        ),
      ),
    );
  }
}
