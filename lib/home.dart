import 'package:flutter/material.dart';
import 'package:playground/about.dart';

const bluePara = Color.fromRGBO(0, 144, 99, 56);
const bgColor = Color.fromARGB(202, 255, 255, 255);

void main() {
  runApp(const MaterialApp(title: "Minis&Bros", home: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: const Color.fromARGB(202, 255, 255, 255),
            appBar: AppBar(
              backgroundColor: const Color.fromRGBO(0, 144, 99, 56),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const About()));
                    },
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
