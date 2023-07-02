import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:malhar_2023/event_module/wpa_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:malhar_2023/home.dart';
import 'package:malhar_2023/main.dart';
import '../credentials/credentials.dart';


class PopUp extends StatefulWidget {
  final String user;
  PopUp({required this.user});
  @override
  _PopUpState createState() => new _PopUpState();
}

class _PopUpState extends State<PopUp> {
  late String user;
  late var sheet;
  @override
  void initState() {
    user = widget.user;
    main();
    super.initState();
    
    
  }
  // Contact sheet details
  final sheetsId = '1w_65x6baLqLxHXMZhnfCQvN-03il_nxmJKgzjxocUYY';
 void main() async {
  // init GSheets
  final gsheets = GSheets(credentials);
  // fetch spreadsheet by its id
  final ss = await gsheets.spreadsheet(sheetsId);
  // get worksheet by its title
   sheet = await ss.worksheetByTitle('products');
}
final FirebaseAuth auth = FirebaseAuth.instance;


  
  signOut() async {
    await auth.signOut();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const MyHomePage(title: "Home",)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Welcome to the CL Page"), backgroundColor: Colors.deepPurple,),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topRight,
            child: ElevatedButton(onPressed: signOut,child: const Text("Sign out"),),
          ),
          const SizedBox(
            height: 40,
          ),
          Flexible(
            child: GridView.count(
              childAspectRatio: 1.0,
              padding: const EdgeInsets.only(left: 16, right: 16),
              crossAxisCount: 2,
              crossAxisSpacing: 18,
              mainAxisSpacing: 18,
              children: [
                
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff453658),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        child:const Icon(Icons.event_available),
                        onTap: () async{
                          // print("hello");
                          print(await sheet.values.value(row: 2, column: 2));
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => WPAHome(user: user)));
                        },
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Text(
                        "WPA",
                        style: GoogleFonts.openSans(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff453658),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        child: const Icon(Icons.event_available),
                        onTap: () {
                         
                        },
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Text(
                        "IPA",
                        style: GoogleFonts.openSans(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff453658),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        child: const Icon(Icons.event_available),
                        onTap: () {
                         
                        },
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Text(
                        "ETC",
                        style: GoogleFonts.openSans(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff453658),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        child: const Icon(Icons.event_available),
                        onTap: () {
                         
                        },
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Text(
                        "LA",
                        style: GoogleFonts.openSans(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff453658),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        child:const Icon(Icons.event_available),
                        onTap: () {
                         
                        },
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Text(
                        "FA",
                        style: GoogleFonts.openSans(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff453658),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        child: const Icon(Icons.event_available),
                        onTap: () {
                         
                        },
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Text(
                        "WINC",
                        style: GoogleFonts.openSans(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}