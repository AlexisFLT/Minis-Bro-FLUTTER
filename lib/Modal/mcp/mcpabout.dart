import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playground/variables/variables.dart';

void showModalMCPAbout(context) {
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
                  padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
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
