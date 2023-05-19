import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gsheets/gsheets.dart';
import '../credentials/credentials.dart';
import '../components/drawer.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      // drawer: ExampleSidebarX(controller: _controller),
      drawer: const CustomDrawer(),
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromRGBO(252, 228, 236, 1)),
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Name
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: const InputDecoration(label: Text("Name")),
                    controller: name,
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                // Email
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: const InputDecoration(label: Text("Email")),
                    controller: email,
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (!EmailValidator.validate(value!)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                ),
                // Mobile
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: const InputDecoration(label: Text("Mobile")),
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
                ),
                // Message
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: const InputDecoration(label: Text("Message")),
                    controller: message,
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                ElevatedButton(
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
                              content: Text('Data received successfully !')),
                        );
                      }
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Unexpected error occured !')),
                        );
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
