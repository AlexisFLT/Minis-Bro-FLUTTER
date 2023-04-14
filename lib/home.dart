import 'package:flutter/material.dart';
import 'package:playground/about.dart';
import 'package:playground/variables/variables.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Variables.backgroundColor,
        appBar: AppBar(
          backgroundColor: Variables.mainColor,
          title: const Text(""),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/LogoMinisMain.png",
                width: 350,
              ),
              FloatingActionButton.large(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const About()));
                },
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                child: const Icon(
                  Icons.touch_app,
                  color: Variables.mainColor,
                ),
              )
            ],
          ),
        ));
  }
}
