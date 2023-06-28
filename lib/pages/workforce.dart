import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:malhar_2023/components/drawer_wrapper.dart';

class Workforce extends StatefulWidget {
  const Workforce({super.key});

  @override
  State<Workforce> createState() => _WorkforceState();
}

class _WorkforceState extends State<Workforce> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabcontroller = TabController(length: 4, vsync: this);

    final _advancedDrawerController = AdvancedDrawerController();

    return DrawerWrapper(
      disableGestures: false,
        drawerController: _advancedDrawerController,
      scaffold: Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          elevation: 0,
          title: Text("",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(255, 255, 255, 1),
              ))),
          backgroundColor: Color.fromRGBO(32, 24, 53, 1),
        ),
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(32, 24, 53, 1),
                Color.fromRGBO(45, 34, 75, 1),
                Color.fromRGBO(61, 45, 100, 1),
                Color.fromRGBO(70, 53, 116, 1),
                Color.fromRGBO(95, 72, 156, 1),
                Color.fromRGBO(97, 71, 156, 1),
              ],
            )),
            child:SingleChildScrollView(
                    child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //workforce title
                              Container(
                                padding: const EdgeInsets.only(left: 18),
                                child: Text("Workforce",
                                    style: GoogleFonts.poppins(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          const Color.fromRGBO(244, 242, 252, 1),
                                    )),
                              ),
                              const SizedBox(height: 30),
    
                              //tabbar
                              Container(
                                  child: TabBar(
                                labelStyle: GoogleFonts.poppins(
                                    color: const Color.fromRGBO(248, 234, 159, 1),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                                unselectedLabelStyle: GoogleFonts.poppins(
                                    color: Colors.white10,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                                indicator: const DotIndicator(
                                    color: Color.fromRGBO(248, 231, 134, 1),
                                    radius: 3),
                                controller: tabcontroller,
                                tabs: const [
                                  Tab(text: "Quartet"),
                                  Tab(text: "Events"),
                                  Tab(text: "Management"),
                                  Tab(text: "Networking"),
                                ],
                              )),
    
                              const SizedBox(height: 15),
    
                              //tabbar view
                              Container(
                                width: double.maxFinite,
                                height: 1200,
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(37.0),
                                ),
                                child: TabBarView(
                                    controller: tabcontroller,
                                    children: [
                                      //Quartet content
                                      Column(
                                        children: [
                                          SizedBox(height: 10),
                                          Center(
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: CarouselSlider(
                                                options: CarouselOptions(
                                                  height: 800,
                                                  viewportFraction: 1,
                                                  enlargeStrategy:
                                                      CenterPageEnlargeStrategy
                                                          .height,
                                                ),
                                                items: [
                                                  'assets/Quartet.jpg',
                                                ].map((i) {
                                                  return Builder(builder:
                                                      (BuildContext context) {
                                                    return Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      margin: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 2.0),
                                                      child: Column(
                                                        children: [
                                                          Image.asset(i),
                                                          const SizedBox(
                                                            height: 10,
                                                          ),
                                                          if (i ==
                                                              'assets/Quartet.jpg')
                                                            Center(
                                                                child: RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    text:
                                                                        TextSpan(
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                            text:
                                                                                'The Quartet \n',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  20,
                                                                              fontWeight:
                                                                                  FontWeight.w500,
                                                                              color: const Color.fromRGBO(
                                                                                  248,
                                                                                  231,
                                                                                  134,
                                                                                  1), //Color.fromRGBO(244, 242, 252, 1),
                                                                            )),
                                                                        TextSpan(
                                                                            text:
                                                                                'Providing a space for one to transcend their true potential, lies in the hands of Quartet 2023. Malhar is back after 3 years, and the Quartet is here to ensure the smooth execution of it all. The Charminar of Malhar, the Quartet stands as pillars of strength. Q’22 is a group that’s passionate and determined to enable you to transcend your horizons.',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  12,
                                                                              fontWeight:
                                                                                  FontWeight.w300,
                                                                              color: const Color.fromRGBO(
                                                                                  244,
                                                                                  242,
                                                                                  252,
                                                                                  1),
                                                                            )),
                                                                      ],
                                                                    ))),
                                                        ],
                                                      ),
                                                    );
                                                  });
                                                }).toList(),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
    
                                      //Events content
                                      Column(
                                        children: [
                                          const SizedBox(height: 10),
                                          Center(
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: CarouselSlider(
                                                options: CarouselOptions(
                                                  height: 800,
                                                  autoPlay: true,
                                                  viewportFraction: 1,
                                                  enlargeCenterPage: true,
                                                  enlargeStrategy:
                                                      CenterPageEnlargeStrategy
                                                          .height,
                                                  autoPlayAnimationDuration:
                                                      const Duration(
                                                          milliseconds: 500),
                                                  autoPlayCurve:
                                                      Curves.easeInExpo,
                                                  enlargeFactor: 0.2,
                                                ),
                                                items: [
                                                  'assets/WINC.jpg',
                                                  'assets/IPA.jpg',
                                                  'assets/WPA.jpg',
                                                  'assets/LA.jpg',
                                                  'assets/FA.jpg',
                                                  'assets/ETC.jpg',
                                                  'assets/Admin.png'
                                                ].map((i) {
                                                  return Builder(builder:
                                                      (BuildContext context) {
                                                    return Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      margin: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 2.0),
                                                      child: Column(
                                                        children: [
                                                          Image.asset(i),
                                                          const SizedBox(
                                                            height: 10,
                                                          ),
                                                          //winc
                                                          if (i ==
                                                              'assets/WINC.jpg')
                                                            Center(
                                                                child: RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    text:
                                                                        TextSpan(
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                            text:
                                                                                'Workshops Inc. \n',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  20,
                                                                              fontWeight:
                                                                                  FontWeight.w500,
                                                                              color: const Color.fromRGBO(
                                                                                  248,
                                                                                  231,
                                                                                  134,
                                                                                  1), //Color.fromRGBO(244, 242, 252, 1),
                                                                            )),
                                                                        TextSpan(
                                                                            text:
                                                                                'Our department of Workshops Inc. wishes for everyone at Malhar to experience learning alongside fun with a wide range of hands on workshops ranging from art, cooking, forensics, styling, dance, music and much more. We believe in aiding the broadening of every participants horizons and enabling each one to grow in multitudes of ways. WINC is a humble abode, and we will make sure you have a wholesome time!',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  12,
                                                                              fontWeight:
                                                                                  FontWeight.w300,
                                                                              color: const Color.fromRGBO(
                                                                                  244,
                                                                                  242,
                                                                                  252,
                                                                                  1),
                                                                            )),
                                                                      ],
                                                                    ))),
                                                          //ipa
                                                          if (i ==
                                                              'assets/IPA.jpg')
                                                            Center(
                                                                child: RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    text:
                                                                        TextSpan(
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                            text:
                                                                                'Indian Performing Arts \n',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  20,
                                                                              fontWeight:
                                                                                  FontWeight.w500,
                                                                              color: const Color.fromRGBO(
                                                                                  248,
                                                                                  231,
                                                                                  134,
                                                                                  1), //Color.fromRGBO(244, 242, 252, 1),
                                                                            )),
                                                                        TextSpan(
                                                                            text:
                                                                                'Indian Performing Arts believes in staying desi at heart and keeping alive the dynamic and multi-hued culture and art forms of our country. The events will be no less than a powerhouse of talent from magical musical performances, and dazzling dances to eye-opening streetplays. Keep the hearts beating cause its time for the desi beat!',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  12,
                                                                              fontWeight:
                                                                                  FontWeight.w300,
                                                                              color: const Color.fromRGBO(
                                                                                  244,
                                                                                  242,
                                                                                  252,
                                                                                  1),
                                                                            )),
                                                                      ],
                                                                    ))),
                                                          //wpa
                                                          if (i ==
                                                              'assets/WPA.jpg')
                                                            Center(
                                                                child: RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    text:
                                                                        TextSpan(
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                            text:
                                                                                'World Performing Arts \n',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  20,
                                                                              fontWeight:
                                                                                  FontWeight.w500,
                                                                              color: const Color.fromRGBO(
                                                                                  248,
                                                                                  231,
                                                                                  134,
                                                                                  1), //Color.fromRGBO(244, 242, 252, 1),
                                                                            )),
                                                                        TextSpan(
                                                                            text:
                                                                                'Welcome to the bright side! Overflowing with energy and expression, here’s introducing a riot of unparalleled talent: The World Performing Arts Department. From lyrics to gimmicks, to soulful pirouettes, our events aim to reflect the perfect melange of innovation and emotion. Turn up that bass, grab your headphones and get your groove on because it’s time to hop on to this expedition of unconstrained, limitless creativity.',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  12,
                                                                              fontWeight:
                                                                                  FontWeight.w300,
                                                                              color: const Color.fromRGBO(
                                                                                  244,
                                                                                  242,
                                                                                  252,
                                                                                  1),
                                                                            )),
                                                                      ],
                                                                    ))),
    
                                                          //la
                                                          if (i ==
                                                              'assets/LA.jpg')
                                                            Center(
                                                                child: RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    text:
                                                                        TextSpan(
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                            text:
                                                                                'Literary Arts \n',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  20,
                                                                              fontWeight:
                                                                                  FontWeight.w500,
                                                                              color: const Color.fromRGBO(
                                                                                  248,
                                                                                  231,
                                                                                  134,
                                                                                  1), //Color.fromRGBO(244, 242, 252, 1),
                                                                            )),
                                                                        TextSpan(
                                                                            text:
                                                                                "Have you ever transcended space and time to enter different literary universes? If yes, Literary Arts (LA) is the perfect fit for you! A hub of all things creative, witty, and spontaneous, LA is the place to be if you’re a writer, public speaker, or dreamer. "
                                                                                "\nI envision a place where creativity sings, and expression gives you wings."
                                                                                "\nWell, if that is the case, \nWelcome to your safe space.",
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  12,
                                                                              fontWeight:
                                                                                  FontWeight.w300,
                                                                              color: const Color.fromRGBO(
                                                                                  244,
                                                                                  242,
                                                                                  252,
                                                                                  1),
                                                                            )),
                                                                      ],
                                                                    ))),
                                                          //fa
                                                          if (i ==
                                                              'assets/FA.jpg')
                                                            Center(
                                                                child: RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    text:
                                                                        TextSpan(
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                            text:
                                                                                'Fine Arts \n',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  20,
                                                                              fontWeight:
                                                                                  FontWeight.w500,
                                                                              color: const Color.fromRGBO(
                                                                                  248,
                                                                                  231,
                                                                                  134,
                                                                                  1), //Color.fromRGBO(244, 242, 252, 1),
                                                                            )),
                                                                        TextSpan(
                                                                            text:
                                                                                'Stuck between reality and a surrealist dream, Fine Arts is an Events department of dedicated people working in a constant state of paint-filled panic. Besides organizing engaging events, FA also curates a homegrown Art Lounge (psst its in LR 22), the theme for which is ‘Art My Weirdest: Dadaism x Absurdism’ this year! Led by an all-female core team, the FA department of Malhar 2022 ‘blends the rules’ to guarantee you the perfect dose of creativity, chaos and colour.',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  12,
                                                                              fontWeight:
                                                                                  FontWeight.w300,
                                                                              color: const Color.fromRGBO(
                                                                                  244,
                                                                                  242,
                                                                                  252,
                                                                                  1),
                                                                            )),
                                                                      ],
                                                                    ))),
                                                          //etc
                                                          if (i ==
                                                              'assets/ETC.jpg')
                                                            Center(
                                                                child: RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    text:
                                                                        TextSpan(
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                            text:
                                                                                'Entertainment, Theatrics & Contests \n',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  20,
                                                                              fontWeight:
                                                                                  FontWeight.w500,
                                                                              color: const Color.fromRGBO(
                                                                                  248,
                                                                                  231,
                                                                                  134,
                                                                                  1), //Color.fromRGBO(244, 242, 252, 1),
                                                                            )),
                                                                        TextSpan(
                                                                            text:
                                                                                'Perfunctorily call us dysfunctional,malfunctional or even unfunctional, you can’t really miss the ‘fun’ in it. Here at ETC, we don’t believe in fitting in. In fact, many people read ETC as etcetera, which is perfect, because why define when you can just be! If you’re someone who’s fed up with the mainstream, quirky, vivacious, funny, etcetera, this is just the place for you.',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  12,
                                                                              fontWeight:
                                                                                  FontWeight.w300,
                                                                              color: const Color.fromRGBO(
                                                                                  244,
                                                                                  242,
                                                                                  252,
                                                                                  1),
                                                                            )),
                                                                      ],
                                                                    ))),
                                                          //admin
                                                          if (i ==
                                                              'assets/Admin.png')
                                                            Center(
                                                                child: RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    text:
                                                                        TextSpan(
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                            text:
                                                                                'Admin \n',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  20,
                                                                              fontWeight:
                                                                                  FontWeight.w500,
                                                                              color: const Color.fromRGBO(
                                                                                  248,
                                                                                  231,
                                                                                  134,
                                                                                  1), //Color.fromRGBO(244, 242, 252, 1),
                                                                            )),
                                                                        TextSpan(
                                                                            text:
                                                                                'The Backbone of Malhar: Admin keeps the Malhar Machine running smoothly and declares the final winners of Malhar. When in doubt, Admin is the department to fall back on. Being the Rulebook Creator of Malhar, Admin likes to go by their tagline: “You Play By Our Rules.” Be assured that this power packed bunch will have your back!',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  12,
                                                                              fontWeight:
                                                                                  FontWeight.w300,
                                                                              color: const Color.fromRGBO(
                                                                                  244,
                                                                                  242,
                                                                                  252,
                                                                                  1),
                                                                            )),
                                                                      ],
                                                                    ))),
                                                        ],
                                                      ),
                                                    );
                                                  });
                                                }).toList(),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
    
                                      //Management
                                      Column(
                                        children: [
                                          SizedBox(height: 10),
                                          Center(
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: CarouselSlider(
                                                options: CarouselOptions(
                                                  height: 800,
                                                  autoPlay: true,
                                                  viewportFraction: 1,
                                                  enlargeCenterPage: true,
                                                  enlargeStrategy:
                                                      CenterPageEnlargeStrategy
                                                          .height,
                                                  autoPlayAnimationDuration:
                                                      const Duration(
                                                          milliseconds: 500),
                                                  autoPlayCurve:
                                                      Curves.easeInExpo,
                                                  enlargeFactor: 0.2,
                                                ),
                                                items: [
                                                  'assets/Security.jpg',
                                                  'assets/Assistance.jpg',
                                                  'assets/logs.jpg',
                                                  'assets/Texxx.jpg',
                                                  'assets/Finance.jpg',
                                                  'assets/Marketing.jpg',
                                                  'assets/Hospitality.jpg'
                                                ].map((i) {
                                                  return Builder(builder:
                                                      (BuildContext context) {
                                                    return Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      margin: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 2.0),
                                                      child: Column(
                                                        children: [
                                                          Image.asset(i),
                                                          const SizedBox(
                                                            height: 10,
                                                          ),
                                                          //security
                                                          if (i ==
                                                              'assets/Security.jpg')
                                                            Center(
                                                                child: RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    text:
                                                                        TextSpan(
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                            text:
                                                                                'Security \n',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  20,
                                                                              fontWeight:
                                                                                  FontWeight.w500,
                                                                              color: const Color.fromRGBO(
                                                                                  248,
                                                                                  231,
                                                                                  134,
                                                                                  1), //Color.fromRGBO(244, 242, 252, 1),
                                                                            )),
                                                                        TextSpan(
                                                                            text:
                                                                                "We never take a chance. That is why we do frisks. Although the music is loud, we continue to manage the crowd. We really shine when the judges are involved. We carry out our plans because the college's safety is in our hands. We are SECURITY, for your interest. Security is the department for you if you want to have a great Malhar and have a lot of fun while working. It's the largest department, and there is a variety of tasks that necessitates diligent, committed, and vivacious individuals!!!",
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  12,
                                                                              fontWeight:
                                                                                  FontWeight.w300,
                                                                              color: const Color.fromRGBO(
                                                                                  244,
                                                                                  242,
                                                                                  252,
                                                                                  1),
                                                                            )),
                                                                      ],
                                                                    ))),
                                                          //assistance
                                                          if (i ==
                                                              'assets/Assistance.jpg')
                                                            Center(
                                                                child: RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    text:
                                                                        TextSpan(
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                            text:
                                                                                'Assistance \n',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  20,
                                                                              fontWeight:
                                                                                  FontWeight.w500,
                                                                              color: const Color.fromRGBO(
                                                                                  248,
                                                                                  231,
                                                                                  134,
                                                                                  1), //Color.fromRGBO(244, 242, 252, 1),
                                                                            )),
                                                                        TextSpan(
                                                                            text:
                                                                                "Within the university, the department of assistance is in charge of crowd and venue control. We provide care for participants, viewers, and occasionally even other volunteers xD. We ensure that there is little disruption and that all Malhar events go off without a hitch. Along with managing the audience, we also get the pleasure of dealing with every judge that shows up to hear Malhar's case. Basically, we keep things running smoothly by working in the background.",
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  12,
                                                                              fontWeight:
                                                                                  FontWeight.w300,
                                                                              color: const Color.fromRGBO(
                                                                                  244,
                                                                                  242,
                                                                                  252,
                                                                                  1),
                                                                            )),
                                                                      ],
                                                                    ))),
                                                          //Logistics
                                                          if (i ==
                                                              'assets/logs.jpg')
                                                            Center(
                                                                child: RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    text:
                                                                        TextSpan(
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                            text:
                                                                                'Logistics \n',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  20,
                                                                              fontWeight:
                                                                                  FontWeight.w500,
                                                                              color: const Color.fromRGBO(
                                                                                  248,
                                                                                  231,
                                                                                  134,
                                                                                  1), //Color.fromRGBO(244, 242, 252, 1),
                                                                            )),
                                                                        TextSpan(
                                                                            text:
                                                                                "One of the Big 4, with 3 sub-departments: Classrooms: Ensuring that the lecture halls are aesthetically pleasing to the audience and participants. Bamboo structures are being built all over the college campus by construction, but displays is always (S)Laying down creative ways to exhibit the many theme-related decor. Events: Oversees the setups and logistical needs for events taking place in the Foyer, Hall, and Quad. We only have 2 goals: to keep Malhar and our volunteers content, and to create a single, enduring family!",
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  12,
                                                                              fontWeight:
                                                                                  FontWeight.w300,
                                                                              color: const Color.fromRGBO(
                                                                                  244,
                                                                                  242,
                                                                                  252,
                                                                                  1),
                                                                            )),
                                                                      ],
                                                                    ))),
    
                                                          //Technicals
                                                          if (i ==
                                                              'assets/Texxx.jpg')
                                                            Center(
                                                                child: RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    text:
                                                                        TextSpan(
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                            text:
                                                                                'Technicals \n',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  20,
                                                                              fontWeight:
                                                                                  FontWeight.w500,
                                                                              color: const Color.fromRGBO(
                                                                                  248,
                                                                                  231,
                                                                                  134,
                                                                                  1), //Color.fromRGBO(244, 242, 252, 1),
                                                                            )),
                                                                        TextSpan(
                                                                            text:
                                                                                "“Mic check 123!” Texxx has its wirlesses and connections with all the other departments of Malhar. Being the warehouse of all technical support, the department illuminates the fest by sweating through the rehearsals, trials and mocks. The drastic effect of the new normal has challenged this bunch of technical people to construct a virtual stage and help people experience Malhar on their screens. Besides being the only big 4 that survived the online set up, Texxx has transitioned into becoming an events department this year.",
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  12,
                                                                              fontWeight:
                                                                                  FontWeight.w300,
                                                                              color: const Color.fromRGBO(
                                                                                  244,
                                                                                  242,
                                                                                  252,
                                                                                  1),
                                                                            )),
                                                                      ],
                                                                    ))),
                                                          //Finance
                                                          if (i ==
                                                              'assets/Finance.jpg')
                                                            Center(
                                                                child: RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    text:
                                                                        TextSpan(
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                            text:
                                                                                'Finance \n',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  20,
                                                                              fontWeight:
                                                                                  FontWeight.w500,
                                                                              color: const Color.fromRGBO(
                                                                                  248,
                                                                                  231,
                                                                                  134,
                                                                                  1), //Color.fromRGBO(244, 242, 252, 1),
                                                                            )),
                                                                        TextSpan(
                                                                            text:
                                                                                "Xavier's ‘Moffice’ houses a group of calculative individuals who look after the financing and budgeting of the fest. One might yawn at their monotonous engagement with spreadsheets, organisation, numbers, math and research but that’s where all the money is! When dealing with a tight budget, the finance department is at its best, trying not to compromise on the necessary expenses. The financers tally their puns and funs and always strike a balance between work and play!",
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  12,
                                                                              fontWeight:
                                                                                  FontWeight.w300,
                                                                              color: const Color.fromRGBO(
                                                                                  244,
                                                                                  242,
                                                                                  252,
                                                                                  1),
                                                                            )),
                                                                      ],
                                                                    ))),
                                                          //Marketing
                                                          if (i ==
                                                              'assets/Marketing.jpg')
                                                            Center(
                                                                child: RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    text:
                                                                        TextSpan(
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                            text:
                                                                                'Marketing \n',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  20,
                                                                              fontWeight:
                                                                                  FontWeight.w500,
                                                                              color: const Color.fromRGBO(
                                                                                  248,
                                                                                  231,
                                                                                  134,
                                                                                  1), //Color.fromRGBO(244, 242, 252, 1),
                                                                            )),
                                                                        TextSpan(
                                                                            text:
                                                                                "The backbone of Malhar, Marketing brings in all the cash (and much more) that is needed to run the whole show. On a regular day, they are stuck on long, tiring calls, working hard to get the financial support we need for Malhar. Due to their contagious enthusiasm and ambition, they get the work done to get the base ready for Malhar to be built on. Their specialities lie in multitasking and being extremely talented!",
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  12,
                                                                              fontWeight:
                                                                                  FontWeight.w300,
                                                                              color: const Color.fromRGBO(
                                                                                  244,
                                                                                  242,
                                                                                  252,
                                                                                  1),
                                                                            )),
                                                                      ],
                                                                    ))),
                                                          //Hospitality
                                                          if (i ==
                                                              'assets/Hospitality.jpg')
                                                            Center(
                                                                child: RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    text:
                                                                        TextSpan(
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                            text:
                                                                                'Hospitality \n',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  20,
                                                                              fontWeight:
                                                                                  FontWeight.w500,
                                                                              color: const Color.fromRGBO(
                                                                                  248,
                                                                                  231,
                                                                                  134,
                                                                                  1), //Color.fromRGBO(244, 242, 252, 1),
                                                                            )),
                                                                        TextSpan(
                                                                            text:
                                                                                "We do everything else after we eat."
                                                                                "Managing the food and drinks on the days of Malhar is the responsibility of hospitality, a management division and key component of Malhar. Here at Hospitality, we also take care of the participants' lodging requirements and use cardolates to convey to the workers the sentiments and feelings of their fellow participants. Food and drinks are provided during pre-Malhar gatherings as well as during the major Malhar days.",
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  12,
                                                                              fontWeight:
                                                                                  FontWeight.w300,
                                                                              color: const Color.fromRGBO(
                                                                                  244,
                                                                                  242,
                                                                                  252,
                                                                                  1),
                                                                            )),
                                                                      ],
                                                                    ))),
                                                        ],
                                                      ),
                                                    );
                                                  });
                                                }).toList(),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
    
                                      //Networking
                                      Column(
                                        children: [
                                          SizedBox(height: 10),
                                          Center(
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: CarouselSlider(
                                                options: CarouselOptions(
                                                  height: 800,
                                                  autoPlay: true,
                                                  viewportFraction: 1,
                                                  enlargeCenterPage: true,
                                                  enlargeStrategy:
                                                      CenterPageEnlargeStrategy
                                                          .height,
                                                  autoPlayAnimationDuration:
                                                      const Duration(
                                                          milliseconds: 500),
                                                  autoPlayCurve:
                                                      Curves.easeInExpo,
                                                  enlargeFactor: 0.2,
                                                ),
                                                items: [
                                                  'assets/Comps.jpg',
                                                  'assets/Conclave.jpg',
                                                  'assets/Creatives.jpg',
                                                  'assets/PR.jpg',
                                                  'assets/DnM.jpg',
                                                ].map((i) {
                                                  return Builder(builder:
                                                      (BuildContext context) {
                                                    return Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      margin: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 2.0),
                                                      child: Column(
                                                        children: [
                                                          Image.asset(i),
                                                          const SizedBox(
                                                            height: 10,
                                                          ),
                                                          //Computers
                                                          if (i ==
                                                              'assets/Comps.jpg')
                                                            Center(
                                                                child: RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    text:
                                                                        TextSpan(
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                            text:
                                                                                'Computers \n',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  20,
                                                                              fontWeight:
                                                                                  FontWeight.w500,
                                                                              color: const Color.fromRGBO(
                                                                                  248,
                                                                                  231,
                                                                                  134,
                                                                                  1), //Color.fromRGBO(244, 242, 252, 1),
                                                                            )),
                                                                        TextSpan(
                                                                            text:
                                                                                "Computers as a department chooses to reside on Discord. In addition to the painful tracking down of bugs and fixing them, you'll probably find one member of the department or another awake at any time of the day. Finding snippets of code through infinite hours of scrolling, clear out something thats"
                                                                                "bugging"
                                                                                "you, or helping the other OGs with all the problems in their computers. All these fall right under their domain.",
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  12,
                                                                              fontWeight:
                                                                                  FontWeight.w300,
                                                                              color: const Color.fromRGBO(
                                                                                  244,
                                                                                  242,
                                                                                  252,
                                                                                  1),
                                                                            )),
                                                                      ],
                                                                    ))),
                                                          //Conclave
                                                          if (i ==
                                                              'assets/Conclave.jpg')
                                                            Center(
                                                                child: RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    text:
                                                                        TextSpan(
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                            text:
                                                                                'Conclave \n',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  20,
                                                                              fontWeight:
                                                                                  FontWeight.w500,
                                                                              color: const Color.fromRGBO(
                                                                                  248,
                                                                                  231,
                                                                                  134,
                                                                                  1), //Color.fromRGBO(244, 242, 252, 1),
                                                                            )),
                                                                        TextSpan(
                                                                            text:
                                                                                "If there is one department that aims to make Malhar an insightful experience, it is Conclave. Bagging the title of ‘Elites’, department conclave does justice to it every year with their list of speakers that reflect vision and innovation at best. They know how to multitask and keep calm under pressure.",
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  12,
                                                                              fontWeight:
                                                                                  FontWeight.w300,
                                                                              color: const Color.fromRGBO(
                                                                                  244,
                                                                                  242,
                                                                                  252,
                                                                                  1),
                                                                            )),
                                                                      ],
                                                                    ))),
                                                          //Creatives
                                                          if (i ==
                                                              'assets/Creatives.jpg')
                                                            Center(
                                                                child: RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    text:
                                                                        TextSpan(
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                            text:
                                                                                'Creatives \n',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  20,
                                                                              fontWeight:
                                                                                  FontWeight.w500,
                                                                              color: const Color.fromRGBO(
                                                                                  248,
                                                                                  231,
                                                                                  134,
                                                                                  1), //Color.fromRGBO(244, 242, 252, 1),
                                                                            )),
                                                                        TextSpan(
                                                                            text:
                                                                                "Creatives has merged with FnD this year to make one big family fuelled by a mutual love-hate relationship with Adobe. The department that ideates and creates and bonds over hunching over their laptops for hours making countless revisions to their work. Last minute changes and digital art are their priorities. They perpetually run on all-nighters and sticker collections.",
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  12,
                                                                              fontWeight:
                                                                                  FontWeight.w300,
                                                                              color: const Color.fromRGBO(
                                                                                  244,
                                                                                  242,
                                                                                  252,
                                                                                  1),
                                                                            )),
                                                                      ],
                                                                    ))),
    
                                                          //Public Relations
                                                          if (i ==
                                                              'assets/PR.jpg')
                                                            Center(
                                                                child: RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    text:
                                                                        TextSpan(
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                            text:
                                                                                'Public Relations \n',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  20,
                                                                              fontWeight:
                                                                                  FontWeight.w500,
                                                                              color: const Color.fromRGBO(
                                                                                  248,
                                                                                  231,
                                                                                  134,
                                                                                  1), //Color.fromRGBO(244, 242, 252, 1),
                                                                            )),
                                                                        TextSpan(
                                                                            text:
                                                                                "This department is the face of the festival. They know what to sell and how to sell it. Ranging starkly from being multi-taskers to multi-linguists. They truly understand the aesthetics of Malhar and carefully put it on a platter for the world to watch. If you see the booming Instagram stats, you know that the PR masterminds are proud of their good work.",
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  12,
                                                                              fontWeight:
                                                                                  FontWeight.w300,
                                                                              color: const Color.fromRGBO(
                                                                                  244,
                                                                                  242,
                                                                                  252,
                                                                                  1),
                                                                            )),
                                                                      ],
                                                                    ))),
                                                          //Decor & Merchandise
                                                          if (i ==
                                                              'assets/DnM.jpg')
                                                            Center(
                                                                child: RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    text:
                                                                        TextSpan(
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                            text:
                                                                                'Decor & Merchandise \n',
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  20,
                                                                              fontWeight:
                                                                                  FontWeight.w500,
                                                                              color: const Color.fromRGBO(
                                                                                  248,
                                                                                  231,
                                                                                  134,
                                                                                  1), //Color.fromRGBO(244, 242, 252, 1),
                                                                            )),
                                                                        TextSpan(
                                                                            text:
                                                                                "Large-scale backdrops and installations can assist in establishing the theme of Malhar on the festival days, or you can express your creativity and showcase your artistic talent through customized goods, paintings, and calligraphy!",
                                                                            style:
                                                                                GoogleFonts.poppins(
                                                                              fontSize:
                                                                                  12,
                                                                              fontWeight:
                                                                                  FontWeight.w300,
                                                                              color: const Color.fromRGBO(
                                                                                  244,
                                                                                  242,
                                                                                  252,
                                                                                  1),
                                                                            )),
                                                                      ],
                                                                    ))),
                                                        ],
                                                      ),
                                                    );
                                                  });
                                                }).toList(),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]),
                              )
                            ])))),
      ),
    );
  }
}

class DotIndicator extends Decoration {
  const DotIndicator({
    this.color = Colors.white,
    this.radius = 4.0,
  });

  final Color color;
  final double radius;

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _DotPainter(
      color: color,
      radius: radius,
      onChange: onChanged,
    );
  }
}

class _DotPainter extends BoxPainter {
  _DotPainter({
    required this.color,
    required this.radius,
    VoidCallback? onChange,
  })  : _paint = Paint()
          ..color = color
          ..style = PaintingStyle.fill,
        super(onChange);

  final Paint _paint;
  final Color color;
  final double radius;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);
    final Rect rect = offset & configuration.size!;
    canvas.drawCircle(
      Offset(rect.bottomCenter.dx, rect.bottomCenter.dy - radius),
      radius,
      _paint,
    );
  }
}
