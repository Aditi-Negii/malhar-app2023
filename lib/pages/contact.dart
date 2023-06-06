import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'package:gsheets/gsheets.dart';
import 'package:malhar_2023/components/drawer_wrapper.dart';
import '../credentials/credentials.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final _formKey = GlobalKey<FormState>();

  // Form Values
  var name = TextEditingController();
  var email = TextEditingController();
  var mobile = TextEditingController();
  var message = TextEditingController();

  // Contact sheet details
  final sheetsId = '1IMQecjOtWx1oOJZycLI3yU693SQGfAcyGPp0oEMu33I';
  final worksheetId = 0;

  final gsheets = GSheets(credentials);

  Future<bool> insertData(String name, String email, int mobile, String message,
      Worksheet workSheet) {
    return workSheet.values.appendRow([name, email, mobile, message]);
  }

  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return DrawerWrapper(
        disableGestures: false,
        drawerController: _advancedDrawerController,
        
        scaffold: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            title: Text("Contact Us", 
               style: GoogleFonts.poppins(
                textStyle : const TextStyle(
                            fontSize: 25.0,
                            fontWeight : FontWeight.w400,
                            color: Color.fromRGBO(246, 221, 235, 1),
                            

               ) )),
        backgroundColor: const Color.fromRGBO(36, 27, 80, 1),
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
               Color.fromRGBO(71, 51, 148, 1),
               Color.fromRGBO(97, 71, 156, 1),
               Color.fromRGBO(133, 93, 167, 1),
               Color.fromRGBO(176, 132, 188, 0.86),

              ],
            )
          ), 
            
            child: SingleChildScrollView(
              child : Padding(
            padding: const EdgeInsets.all(42),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height:20,
                ),
              
                //Send us msg text 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Send us a message",
                      style: GoogleFonts.poppins(
                        fontSize: 22.0,
                        fontWeight : FontWeight.w400,
                        color: const Color.fromRGBO(246, 221, 235, 1),
                      ),
                ),
                ]),

                const SizedBox(
                  height:13,
                ),
                
                //mail
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.mail_outline_rounded,
                    size: 16,
                    color:  Color.fromRGBO(246, 221, 235, 1),),

                    Text(" quartet@malharfest.in",
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight : FontWeight.w300,
                        fontStyle: FontStyle.italic,
                        color: const Color.fromRGBO(246, 221, 235, 1),
                      ),
                ),
                  ],
                ),
              const SizedBox(
                  height:6,
                ),
                //mail                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.mail_outline_rounded,
                    size: 16,
                    color:  Color.fromRGBO(246, 221, 235, 1),),

                    Text(" malharfest@xaviers.edu.in",
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight : FontWeight.w300,
                        fontStyle: FontStyle.italic,
                        color: const Color.fromRGBO(246, 221, 235, 1),
                      ),
                ),
                  ],
                ),
                
                const SizedBox(
                  height:25,
                ),

                //TextFormField Container
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 450,
                      width: 303,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(246, 221, 235, 1),
                        borderRadius: BorderRadius.all(Radius.circular(20))                        
                      ),
                      child: Form(
                      key: _formKey,
                      child : Padding(
                        padding: const EdgeInsets.all(13),
                        child : Column(
                        children: [
                          
                          const SizedBox(height:13),
                          
                          //Full Name
                          TextFormField(
                             style : GoogleFonts.poppins(
                                  color: Color.fromARGB(255, 7, 1, 41),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ), 
                            cursorColor: const Color.fromRGBO(36, 27, 80, 1),                          
                            decoration: InputDecoration(                              
                                hintText: 'Full Name',
                                hintStyle: GoogleFonts.poppins(
                                  color: const Color.fromRGBO(36, 27, 80, 1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                                 enabledBorder: const UnderlineInputBorder( 
                                  borderSide: BorderSide(
                                  color:  Color.fromRGBO(36, 27, 80, 1),), 
                                ),
                                focusedBorder: const UnderlineInputBorder( 
                                  borderSide: BorderSide(
                                  color:  Color.fromRGBO(36, 27, 80, 1),), 
                                ),                           
                          ),
                          controller: name,
                        // The validator receives the text that the user has entered.
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },  
                          ),

                          const SizedBox(height:13),

                          //Email
                          TextFormField(
                            cursorColor: const Color.fromRGBO(36, 27, 80, 1),
                            style : GoogleFonts.poppins(
                                  color: Color.fromARGB(255, 7, 1, 41),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ), 
                            decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: GoogleFonts.poppins(
                                  color: const Color.fromRGBO(36, 27, 80, 1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                                 enabledBorder: const UnderlineInputBorder( 
                                  borderSide: BorderSide(
                                  color:  Color.fromRGBO(36, 27, 80, 1),), 
                                ),
                                focusedBorder: const UnderlineInputBorder( 
                                  borderSide: BorderSide(
                                  color:  Color.fromRGBO(36, 27, 80, 1),), 
                                ),                              
                          ),
                          controller: email,
                        // The validator receives the text that the user has entered.
                        validator: (value) {
                          if (!EmailValidator.validate(value!)) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },    
                          ),

                          const SizedBox(height:13),

                          //Contact Number
                          TextFormField(
                             style : GoogleFonts.poppins(
                                  color: Color.fromARGB(255, 7, 1, 41),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ), 
                            keyboardType: TextInputType.number,
                            cursorColor: const Color.fromRGBO(36, 27, 80, 1),
                            decoration: InputDecoration(
                                hintText: 'Contact Number',
                                hintStyle: GoogleFonts.poppins(
                                  color: const Color.fromRGBO(36, 27, 80, 1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                                 enabledBorder: const UnderlineInputBorder( 
                                  borderSide: BorderSide(
                                  color:  Color.fromRGBO(36, 27, 80, 1),), 
                                ),
                                focusedBorder: const UnderlineInputBorder( 
                                  borderSide: BorderSide(
                                  color:  Color.fromRGBO(36, 27, 80, 1),), 
                                ),                              
                          ),
                          controller: mobile,
                        // The validator receives the text that the user has entered.
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          } else if (value.length != 10) {
                            return 'Please enter valid mobile number';
                          }
                          return null;
                        },  
                          ),

                          const SizedBox(height:13),

                          //Your Message
                          TextFormField(
                             style : GoogleFonts.poppins(
                                  color: Color.fromARGB(255, 7, 1, 41),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ), 
                            maxLines: 3,
                            cursorColor: const Color.fromRGBO(36, 27, 80, 1),
                            decoration: InputDecoration(
                                hintText: 'Your Message',
                                hintStyle: GoogleFonts.poppins(
                                  color: const Color.fromRGBO(36, 27, 80, 1),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                                 enabledBorder: const UnderlineInputBorder( 
                                  borderSide: BorderSide(
                                  color:  Color.fromRGBO(36, 27, 80, 1),), 
                                ), 
                                focusedBorder: const UnderlineInputBorder( 
                                  borderSide: BorderSide(
                                  color:  Color.fromRGBO(36, 27, 80, 1),), 
                                ),                             
                          ),
                          controller: message,
                        // The validator receives the text that the user has entered.
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                          ),

                          const SizedBox(height:20),

                          //Submit
                          SizedBox(
                            height: 38.21,
                            width:278,
                            child : ElevatedButton(
                              onPressed: () async {
                        try {
                          // Open sheet
                          final sheet = await gsheets.spreadsheet(sheetsId);
                          var workSheet = sheet.worksheetById(worksheetId);

                          if (_formKey.currentState!.validate()) {
                            // Insert data into sheet
                            insertData(
                                name.value.text,
                                email.value.text,
                                int.parse(mobile.value.text),
                                message.value.text,
                                workSheet!);
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content:
                                      Text('Data received successfully !')),
                            );
                          }
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Unexpected error occured !')),
                          );
                        }
                      }, 
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(36, 27, 80, 1)), ),
                          child: Text("Submit",
                          style: GoogleFonts.poppins(
                            fontSize: 12.9495,
                            fontWeight : FontWeight.w500,                            
                            color: const Color.fromRGBO(246, 221, 235, 1),
                            

                          ),))),

                        ],
                      ),
                      ))
                    )
                  ],
                ),
              const SizedBox(height:27),

              //connect with us text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Connect with us",
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight : FontWeight.w500,
                  fontStyle: FontStyle.italic,
                  color: const Color.fromRGBO(36, 27, 80, 1) 

                ),)
              ],),

               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                Container(
                  child: Image.asset("icons/instagram.png"),
                  height : 20,
                  width : 20
                ),
                
                SizedBox(width:20),
                
                Container(
                  child: Image.asset("icons/facebook.png"),
                  height : 20,
                  width : 20
                ),
                
                SizedBox(width:20),
                
                Container(
                  child: Image.asset("icons/youtube.png"),
                  height : 20,
                  width : 20
                ),
                
                

                 
                     
                

                ],
              ),

              const SizedBox(height:32)


              ]),

             

            )

            )
            
          ), // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}
