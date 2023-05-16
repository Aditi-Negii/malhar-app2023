import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/drawer.dart';


class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      // drawer: ExampleSidebarX(controller: _controller),
      drawer: const CustomDrawer(),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover)),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '',
              )
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}