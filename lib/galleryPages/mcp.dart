// ignore_for_file: unnecessary_cast

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playground/nav.dart';
import 'package:playground/variables/variables.dart';

class MCPApp extends StatelessWidget {
  const MCPApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MCP();
  }
}

class MCP extends StatefulWidget {
  const MCP({super.key});

  @override
  State<MCP> createState() => _MCP();
}

class _MCP extends State<MCP> {
  List<Map<String, dynamic>> charList = [
    {
      'id': 1 as int,
      'name': "Groot" as String,
      'subname': "I am Groot" as String,
      'minisF': "assets/mcp/guard/Groot.png" as String,
      'healthy': "assets/mcp/cards/guard/groot.png" as String,
      'injured': "assets/mcp/cards/guard/grootKO.png" as String,
    },
    {
      'id': 2 as int,
      'name': "Rocket Raccoon",
      'subname': "Rocket Raccoon" as String,
      'minisF': "assets/mcp/guard/rocket1.png" as String,
      'minisB': "assets/mcp/guard/rocket2.png" as String,
      'healthy': "assets/mcp/cards/guard/rocket.png" as String,
      'injured': "assets/mcp/cards/guard/rocketKO.png" as String,
    },
    {
      'id': 3 as int,
      'name': "Star-Lord",
      'subname': "Peter Quill" as String,
      'minisF': "assets/mcp/guard/starlordF.png" as String,
      'minisB': "assets/mcp/guard/starlordB.png" as String,
      'healthy': "assets/mcp/cards/guard/starlord.png" as String,
      'injured': "assets/mcp/cards/guard/starlordKO.png" as String,
    },
  ];

  _showModalMCPAbout(context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      barrierLabel: "Marvel Crisis Protocol",
      transitionDuration: const Duration(milliseconds: 500),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Scaffold(
          appBar: AppBar(
              backgroundColor: Variables.guardColor,
              centerTitle: true,
              leading: IconButton(
                  icon: const Icon(
                    Icons.close,
                    color: Variables.backgroundColor,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              title: Text(
                "Marvel Crisis Protocol",
                style: GoogleFonts.cormorantUpright(
                    fontSize: 25, color: Variables.backgroundColor),
              ),
              elevation: 0.0),
          backgroundColor: Variables.textColor.withOpacity(0.90),
          body: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    "assets/mcp/mcpLogo/mcp.png",
                    width: 100,
                  )),
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    "assets/mcp/mcpLogo/atomic.png",
                    width: 100,
                  )),
            ]),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 10, right: 10),
                      child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            text:
                                ("Marvel Crisis Protocol est un jeu de figurines tactique pour deux joueurs dans lequel les participants incarnent leurs héros préférés et s'affrontent sur un champ de bataille personnalisé. Rassemblez votre équipe et dirigez vos forces surpuissantes contre vos amis dans des batailles d'une ampleur cataclysmique ! Avec les décors et les figurines inclus dans ce coffret de démarrage, plus rien ne vous empêchera de plonger dans l'univers Marvel !"),
                            style: GoogleFonts.cormorantUpright(
                              fontSize: 17,
                              color: Variables.backgroundColor,
                            ),
                          ))),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                            text:
                                (" Une partie de Crisis Protocol se joue en plusieurs manches. Les escouades gagnent des points de victoire en remplissant des objectifs. Le premier joueur à obtenir 16 points de victoire remporte la partie. Avant le début de la partie : Chaque joueur recrute une équipe de personnages, créant ainsi un réservoir de talents bruts dans lequel il puisera plus tard pour créer l'escouade qu'il enverra dans cette bataille. Les joueurs travaillent ensemble pour mettre en place les caractéristiques et les obstacles sur le champ de bataille qui affecteront le combat et pour créer la mission du jeu à partir d'une sélection de cartes de crise tirées au hasard.  Une fois la mission définie : Chaque joueur fait appel aux personnages de sa liste pour former une escouade ayant le meilleur mélange de compétences et d'aptitudes pour les tâches à accomplir. Les deux escouades s'affronteront en utilisant des attaques uniques, des super-pouvoirs et même le champ de bataille lui-même pour mener à bien la mission."),
                            style: GoogleFonts.cormorantUpright(
                              fontSize: 17,
                              color: Variables.backgroundColor,
                            ))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ]),
        );
      },
    );
  }

  _showModalMCPCards(int index) {
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      barrierLabel: charList[index]['name'],
      transitionDuration: const Duration(milliseconds: 500),
      pageBuilder: (
        context,
        animation,
        secondaryAnimation,
      ) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Variables.guardColor,
            centerTitle: true,
            leading: IconButton(
                icon: const Icon(
                  Icons.close,
                  color: Variables.backgroundColor,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
            title: Text(charList[index]['name'],
                style: GoogleFonts.cormorantUpright(
                    fontSize: 30, color: Variables.backgroundColor)),
          ),
          backgroundColor: Variables.textColor.withOpacity(0.90),
          body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Padding(
                  padding: const EdgeInsets.only(left: 2, right: 2, bottom: 20),
                  child: Image.asset(
                    charList[index]['healthy'],
                    width: 500,
                  )),
            ),
            Center(
              child: Padding(
                  padding: const EdgeInsets.only(left: 2, right: 2, bottom: 20),
                  child: Image.asset(
                    charList[index]['injured'],
                    width: 500,
                  )),
            )
          ]),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Variables.mainColor,
        ),
        backgroundColor: Variables.backgroundColor,
        drawer: const Nav(),
        body: Column(children: [
          const Padding(padding: EdgeInsets.only(top: 20)),
          Text(
            "The Guardians of the Galaxy",
            style: GoogleFonts.cormorantUpright(
                fontSize: 30,
                color: Variables.guardColor,
                fontWeight: FontWeight.w500),
          ),
          CarouselSlider.builder(
              options: CarouselOptions(
                autoPlay: false,
                height: 650,
                enlargeCenterPage: true,
                viewportFraction: 0.8,
                enableInfiniteScroll: true,
                pageSnapping: true,
              ),
              itemCount: charList.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Card(
                  color: Colors.transparent,
                  elevation: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                          onTap: () {
                            _showModalMCPCards(index);
                          },
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Image.asset((charList[index]['minisF'])),
                          )),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(charList[index]['name'],
                          style: GoogleFonts.cormorantUpright(
                              fontSize: 30, color: Variables.guardColor)),
                      const SizedBox(height: 8.0),
                      Text(
                        charList[index]['subname'],
                        style: GoogleFonts.cormorantUpright(
                            fontStyle: FontStyle.italic,
                            fontSize: 18,
                            color: Variables.guardColor),
                      ),
                    ],
                  ),
                );
              }),
          SizedBox(
              width: 250,
              height: 30,
              child: FloatingActionButton.extended(
                backgroundColor: Variables.targColor,
                onPressed: () {
                  _showModalMCPAbout(context);
                },
                label: Text('En savoir plus sur ce jeu',
                    style: GoogleFonts.cormorantUpright(
                      fontSize: 20,
                      color: Variables.backgroundColor,
                    )),
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ))
        ]));
  }
}
