import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playground/nav.dart';
import 'package:playground/variables/variables.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const About();
  }
}

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Variables.backgroundColor,
            appBar: AppBar(
              backgroundColor: Variables.mainColor,
              title: const Text(""),
            ),
            drawer: const Nav(),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "À Propos",
                      style: GoogleFonts.cormorantUpright(
                        fontSize: 30,
                        color: Variables.mainColor,
                      ),
                    ),
                  ),
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Text(
                        "Je suis Alexis, un amateur et passionné de peinture sur figurines. Je peins simplement à mon niveau avec pour objectif de parfaire les techniques. Je posséde une imprimante 3D (pla) qui me permet d'imprimer décors et autres éléments afin d'égayer les socles et les tables de jeux. Je peins principalement des figurines A Song of Ice and Fire miniatures, Marvel Crisis Protocol, Star Wars Legion.",
                        style: GoogleFonts.cormorantUpright(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Variables.textColor),
                        textAlign: TextAlign.justify,
                      )),
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Text(
                        " Mis à part vous faire découvrir ma passion, cette page a aussi un objectif plus personnel et professionnel car elle va me servir de terrain de jeu pour me perfectionner pour ma reconversion dans le developpement web. Si tu passes par là, un grand merci.",
                        style: GoogleFonts.cormorantUpright(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.justify,
                      )),
                ]))));
  }
}
