import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playground/variables/variables.dart';

void showModalAsoiafModal(context) {
  showGeneralDialog(
    context: context,
    barrierDismissible: false,
    barrierLabel: "A Song of Ice and Fire - Miniatures",
    transitionDuration: const Duration(milliseconds: 500),
    pageBuilder: (context, animation, secondaryAnimation) {
      return Scaffold(
        appBar: AppBar(
            backgroundColor: Variables.targColor,
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
              "A Song of Ice and Fire - Miniatures",
              style: GoogleFonts.cormorantUpright(
                  fontSize: 20, color: Variables.backgroundColor),
            ),
            elevation: 0.0),
        backgroundColor: Variables.textColor.withOpacity(0.90),
        body: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  "assets/tdf/asoiafLogo/asoiaf.png",
                  width: 150,
                )),
            Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  "assets/tdf/asoiafLogo/cmonLogo.png",
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
                              ("Le Trône de Fer: le Jeu de Figurines est un jeu compétitif pour au moins 2 joueurs. Chacun d’eux contrôle l’une des Grandes Maisons de Westeros en commandant aux unités sur le champ de bataille, en recrutant des Héros légendaires et en manipulant la scène politique pour tenter d’obtenir le plus grand des trophées: le Trône de Fer. Les sculptures sont basées sur des illustrations originales conçues par l’équipe graphique de Cool Mini or Not, sous la supervision directe de George R.R. Martin et de Dark Sword Miniatures, afin d’assurer que ce jeu offre aux fans ce qu’ils attendaient depuis des années"),
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
                              ("À tour de rôles, les joueurs activent l’une de leurs unités qui ne l’a pas encore été à ce round. Cette unité combattante peut: Manœuvrer, marcher, se replier, attaquer ou charger. L’activation d’une figurine peut aussi s’accompagner de cartes Tactiques ayant des effets sur le terrain. Chaque camp a son propre jeu de cartes Tactique, auxquelles sont ajoutées celles de leur leader, spécifiques. Si c’est une unité non combattante qui est activée, elle peut prendre le contrôle de l’un des emplacements libre du tableau stratégique : Couronne, Richesse, Tactiques, Combat ou Manœuvre et utiliser la capacité stratégique attenante, et sa propre compétence. Quand toutes les unités ont été activées, on passe à la phase d’entretien : calcul des points de victoire, retrait de toutes les figurines du tableau stratégique, retour de sa main à trois cartes tactiques, vérification des conditions de victoire, etc."),
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
