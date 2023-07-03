import 'package:animate_gradient/animate_gradient.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slimy_card/flutter_slimy_card.dart';
import 'eventspage/crossover_events.dart';
import 'eventspage/etc_events.dart';
import 'eventspage/fa_events.dart';
import 'eventspage/la_events.dart';
import 'eventspage/malhar_spaces_events.dart';
import 'eventspage/wpa_events.dart';
import 'eventspage/ipa_events.dart';



class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPage();
}

class _EventsPage extends State<EventsPage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          title: Text(
            "E V E N T S",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: AnimateGradient(
        primaryColors: [
          Color(0xffce93d8),
          Color(0xffe1bee7),
          Color(0xfff3e5f5),
        ],
        secondaryColors: [
          Color(0xfff3e5f5),
          Color(0xffe1bee7),
          Color(0xffce93d8),
        ],
        child: SafeArea(
            child: Stack(
          children: [
            ListView(
              children: [
                // for (int i = 0; i < 3; i++)
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
                  child: FlutterSlimyCard(
                    color: Colors.deepPurple,
                    slimeEnabled: true,
                    topCardHeight: 600,
                    bottomCardHeight: 100,
                    topCardWidget: topWidget1(),
                    bottomCardWidget: bottomWidget1(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 30, 16, 30),
                  child: FlutterSlimyCard(
                    color: Colors.deepPurple,
                    slimeEnabled: true,
                    topCardHeight: 600,
                    bottomCardHeight: 100,
                    topCardWidget: topWidget2(),
                    bottomCardWidget: bottomWidget2(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 30, 16, 30),
                  child: FlutterSlimyCard(
                    color: Colors.deepPurple,
                    slimeEnabled: true,
                    topCardHeight: 600,
                    bottomCardHeight: 100,
                    topCardWidget: topWidget3(),
                    bottomCardWidget: bottomWidget3(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 30, 16, 30),
                  child: FlutterSlimyCard(
                    color: Colors.deepPurple,
                    slimeEnabled: true,
                    topCardHeight: 600,
                    bottomCardHeight: 100,
                    topCardWidget: topWidget4(),
                    bottomCardWidget: bottomWidget4(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 30, 16, 30),
                  child: FlutterSlimyCard(
                    color: Colors.deepPurple,
                    slimeEnabled: true,
                    topCardHeight: 600,
                    bottomCardHeight: 100,
                    topCardWidget: topWidget5(),
                    bottomCardWidget: bottomWidget5(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 30, 16, 30),
                  child: FlutterSlimyCard(
                    color: Colors.deepPurple,
                    slimeEnabled: true,
                    topCardHeight: 600,
                    bottomCardHeight: 100,
                    topCardWidget: topWidget6(),
                    bottomCardWidget: bottomWidget6(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 30, 16, 30),
                  child: FlutterSlimyCard(
                    color: Colors.deepPurple,
                    slimeEnabled: true,
                    topCardHeight: 600,
                    bottomCardHeight: 100,
                    topCardWidget: topWidget7(),
                    bottomCardWidget: bottomWidget7(),
                  ),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }

  //================================================WPA begins==============================================//
  topWidget1() {
    return Container(
      child: SafeArea(
        child: Column(
          children: [
            // for (int i = 0; i < 2; i++)
            Container(
              child: Column(
                children: [
                  // for (int i = 0; i < 3; i++)
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/icons/events_dept_icons/wpa.png")
                  ),
                  //  for (int i = 0; i < 3; i++)
                  Container(
                    height: 30,
                    child: Text(
                      "Western Performing Arts",
                      // "hi",
                      // deptName[i],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'From the grace of contemporary to the swag of hip-hop, from thecovered! WPA is the platform that gives your passion wings! If themelodies of acapella to the beats of jazz, we\'ve got it allgrit, the sweat, the gruelling hours spent to get just a singlepiece of choreography right and the love of making music keeps yougoing then WPA is definitely your place.This year our vision is toincorporate inclusivity irrespective of the various barriers andbring out the best in everyone. We aim to nurture talent and wouldgo all out to provide a platform for all the willing ones.Bringing in a new flavour along with carrying forward the legacyof WPA would be our mantra!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }

  bottomWidget1() {
    return Container(
        // decoration:
        //     BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(2))),
        margin: EdgeInsets.only(top: 5),
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6))),
                side: BorderSide(
                  color: Colors.white,
                ),
                backgroundColor: Colors.transparent,
                shadowColor: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WpaEventsPage()),
              );
            },
            child: Text(
              "Read More",
              style: TextStyle(color: Colors.white),
            )));
  }

//====================================WPA ends ===========================================//

  //================================================IPA begins==============================================//
  topWidget2() {
    return Container(
      child: SafeArea(
        child: Column(
          children: [
            // for (int i = 0; i < 2; i++)
            Container(
              child: Column(
                children: [
                  // for (int i = 0; i < 3; i++)
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:  AssetImage("assets/icons/events_dept_icons/ipa.png",)
                  ),
                  //  for (int i = 0; i < 3; i++)
                  Container(
                    height: 30,
                    child: Text(
                      "Indian Performing Arts",
                      // "hi",
                      // deptName[i],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Mere paas bangla hai, gadi hai, bank balance hai. Tumhare paas kya hai? Hamare paas? Hamare paas IPA ki shaan hai! The Indian Performing Arts department of Malhar 2023 aims to promote the beats of tabla, the mellifluous notes of the sitar, the rhythmic footwork of Kathak and the energetic beats of Bhangra. We are determined to continue the rich legacy of Indian classical and folk art forms. By fusing the traditional art forms with a little Bollywood tadka, our vision is to organise the grandest and the most entertaining events in Malhar!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }

  bottomWidget2() {
    return Container(
        // decoration:
        //     BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(2))),
        margin: EdgeInsets.only(top: 5),
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6))),
                side: BorderSide(
                  color: Colors.white,
                ),
                backgroundColor: Colors.transparent,
                shadowColor: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IpaEventsPage()),
              );
            },
            child: Text(
              "Read More",
              style: TextStyle(color: Colors.white),
            )));
  }

//====================================IPA ends ===========================================//

  //================================================FA begins==============================================//
  topWidget3() {
    return Container(
      child: SafeArea(
        child: Column(
          children: [
            // for (int i = 0; i < 2; i++)
            Container(
              child: Column(
                children: [
                  // for (int i = 0; i < 3; i++)
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:  AssetImage("assets/icons/events_dept_icons/fa.png")
                  ),
                  //  for (int i = 0; i < 3; i++)
                  Container(
                    height: 30,
                    child: Text(
                      "Fine Arts",
                      // "hi",
                      // deptName[i],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Fine Arts'23 is a captivating voyage of shattered preconceptions, where we experiment and explore new avenues. From our resplendent events to the alluring art lounge, each conception we conceive is a veritable masterpiece of originality. We aim to showcase the true potential of the Fine Arts department, that transcends mere brushstrokes upon canvas! Brace yourself, for FA Malhar'23 shall undeniably manifest as an exuberant kaleidoscope of boundless vibrancy.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }

  bottomWidget3() {
    return Container(
        // decoration:
        //     BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(2))),
        margin: EdgeInsets.only(top: 5),
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6))),
                side: BorderSide(
                  color: Colors.white,
                ),
                backgroundColor: Colors.transparent,
                shadowColor: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FaEventsPage()),
              );
            },
            child: Text(
              "Read More",
              style: TextStyle(color: Colors.white),
            )));
  }

//====================================FA ends ===========================================//

  //================================================ETC begins==============================================//
  topWidget4() {
    return Container(
      child: SafeArea(
        child: Column(
          children: [
            // for (int i = 0; i < 2; i++)
            Container(
              child: Column(
                children: [
                  // for (int i = 0; i < 3; i++)
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:  AssetImage("assets/icons/events_dept_icons/etc.png")
                  ),
                  //  for (int i = 0; i < 3; i++)
                  Container(
                    height: 60,
                    child: Text(
                      "Entertainment, Theatricals and Contests",
                      textAlign: TextAlign.center,
                      // "hi",
                      // deptName[i],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              " ETC in a nutshell is a madhouse and a playground where we come up with the most innovative and out of the box events, competitions and games! Our vision for Malhar 2023 is to create a platform for all our participants to run wild with their talents and skills, participate in events like never before and enjoy themselves to the fullest! Our team is super excited to explore our creative limits when we're organising these events and we can't wait to have the ultimate Malhar experience!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }

  bottomWidget4() {
    return Container(
        // decoration:
        //     BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(2))),
        margin: EdgeInsets.only(top: 5),
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6))),
                side: BorderSide(
                  color: Colors.white,
                ),
                backgroundColor: Colors.transparent,
                shadowColor: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EtcEventsPage()),
              );
            },
            child: Text(
              "Read More",
              style: TextStyle(color: Colors.white),
            )));
  }

//====================================ETC ends ===========================================//

  //================================================LA begins==============================================//
  topWidget5() {
    return Container(
      child: SafeArea(
        child: Column(
          children: [
            // for (int i = 0; i < 2; i++)
            Container(
              child: Column(
                children: [
                  // for (int i = 0; i < 3; i++)
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:  AssetImage("assets/icons/events_dept_icons/la.png")
                  ),
                  //  for (int i = 0; i < 3; i++)
                  Container(
                    height: 30,
                    child: Text(
                      "Literary Arts",
                      // "hi",
                      // deptName[i],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              " Literary Arts has always had a certain perception: people expect it to be a space only for a niche audience. My claim is not that this isn't true, but that it's incomplete. Literary arts is so much more — it is an expression, a catharsis, and, more importantly, a rediscovery of yourself. Through this department and Malhar '23, I aim to break this stereotype and simply redefine what LA means. With an incredible team of OGs and Volunteers, I'm positive that we can achieve this goal. And if you think that Literary Arts is 'boring', we can't wait to show you what we have in store.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }

  bottomWidget5() {
    return Container(
        // decoration:
        //     BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(2))),
        margin: EdgeInsets.only(top: 5),
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6))),
                side: BorderSide(
                  color: Colors.white,
                ),
                backgroundColor: Colors.transparent,
                shadowColor: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LaEventsPage()),
              );
            },
            child: Text(
              "Read More",
              style: TextStyle(color: Colors.white),
            )));
  }

//====================================LA ends ===========================================//

//================================================CROSSOVER begins==============================================//
  topWidget6() {
    return Container(
      child: SafeArea(
        child: Column(
          children: [
            // for (int i = 0; i < 2; i++)
            Container(
              child: Column(
                children: [
                  // for (int i = 0; i < 3; i++)
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:  AssetImage("assets/icons/events_dept_icons/crossover.png")
                  ),
                  //  for (int i = 0; i < 3; i++)
                  Container(
                    height: 30,
                    child: Text(
                      "CrossOver",
                      // "hi",
                      // deptName[i],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              " Malhar is about many aspects, like cooperation, collaboration anda collected set of efforts striving towards a common goal.Crossover events fit into all the above mentioned adjectives andis best defined as a fusion of talents. The Crossover events carry forward the legacy of Malhar by proving that despite havingdifferent departments, there is nothing better than when they cometogether to create a spectacle.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }

  bottomWidget6() {
    return Container(
        // decoration:
        //     BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(2))),
        margin: EdgeInsets.only(top: 5),
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6))),
                side: BorderSide(
                  color: Colors.white,
                ),
                backgroundColor: Colors.transparent,
                shadowColor: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CrossoverEventsPage()),
              );
            },
            child: Text(
              "Read More",
              style: TextStyle(color: Colors.white),
            )));
  }

//====================================CROSSOVER ends ===========================================//

//================================================MALHAR SPACES begins==============================================//
  topWidget7() {
    return Container(
      child: SafeArea(
        child: Column(
          children: [
            // for (int i = 0; i < 2; i++)
            Container(
              child: Column(
                children: [
                  // for (int i = 0; i < 3; i++)
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:  AssetImage("assets/icons/events_dept_icons/malharspaces.png")
                  ),
                  //  for (int i = 0; i < 3; i++)
                  Container(
                    height: 30,
                    child: Text(
                      "Malhar Spaces",
                      // "hi",
                      // deptName[i],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "We are thrilled to introduce a new addition to the vibrant atmosphere of Malhar 2023: Malhar Spaces. These three interactive places on our campus are designed to provide unique and engaging experiences for our audiences. Serving as dedicated venues for specific competitions, Malhar Spaces offer individuals the opportunity to immerse themselves in their preferred areas of interest. These spaces invite people to come, enjoy, and appreciate the diverse talents showcased by our participants. We invite everyone to be a part of this exciting initiative and indulge in the thrill of competition as spectators in these specially designated areas. Come find your eye of the storm at Malhar spaces!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }

  bottomWidget7() {
    return Container(
        // decoration:
        //     BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(2))),
        margin: EdgeInsets.only(top: 5),
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6))),
                side: BorderSide(
                  color: Colors.white,
                ),
                backgroundColor: Colors.transparent,
                shadowColor: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MalharSpacesEventsPage()),
              );
            },
            child: Text(
              "Read More",
              style: TextStyle(color: Colors.white),
            )));
  }

//====================================MALHAR SPACES ends ===========================================//
}
