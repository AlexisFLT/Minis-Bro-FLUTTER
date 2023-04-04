import 'package:flutter/material.dart';
import 'package:playground/nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color.fromARGB(202, 255, 255, 255),
            appBar: AppBar(
              backgroundColor: const Color.fromRGBO(0, 144, 99, 56),
              title: const Text(""),
            ),
            drawer: const Nav(),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/LogoMinisMain.png",
                    width: 350,
                  ),
                  FloatingActionButton.large(
                    onPressed: () {},
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    child: const Icon(
                      Icons.touch_app,
                      color: Color.fromRGBO(0, 144, 99, 56),
                    ),
                  )
                ],
              ),
            )));
  }
}
