import 'package:flutter/material.dart';
import 'package:playground/charactersList/asoiaf/targaryen.dart';
import 'package:playground/nav.dart';
import 'package:playground/variables/variables.dart';
import 'package:google_fonts/google_fonts.dart';

class Asoiaf extends StatelessWidget {
  const Asoiaf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Nav(),
      appBar: AppBar(
        backgroundColor: Variables.mainColor,
        title: Text("A Song of Ice and Fire - Miniatures",
            style: GoogleFonts.cormorantUpright(
                fontSize: 20, color: Variables.backgroundColor)),
      ),
      backgroundColor: Variables.backgroundColor,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 32),
              child: Text("Choisis une faction",
                  style: GoogleFonts.cormorantUpright(
                      fontSize: 30, color: Variables.textColor)),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Targaryen()));
                        },
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Image.asset(
                            "assets/tdf/asoiafLogo/targaryen.png",
                            width: 150,
                          ),
                        )),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text("Targaryen",
                        style: GoogleFonts.cormorantUpright(
                            fontSize: 20, color: Variables.targColor)),
                    const SizedBox(height: 8.0),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Image.asset(
                            "assets/tdf/asoiafLogo/neutral.png",
                            width: 150,
                          ),
                        )),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text("Neutres",
                        style: GoogleFonts.cormorantUpright(
                            fontSize: 20, color: Variables.neutralColor)),
                    const SizedBox(height: 8.0),
                  ],
                ),
              ],
            ),
            SizedBox(
                width: 250,
                height: 30,
                child: FloatingActionButton.extended(
                  backgroundColor: Variables.targColor,
                  onPressed: () {
                    // _showModalMCPAbout(context);
                  },
                  label: Text('En savoir plus sur ce jeu',
                      style: GoogleFonts.cormorantUpright(
                        fontSize: 20,
                        color: Variables.backgroundColor,
                      )),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ))
          ],
        ),
      ),
    );
  }
}
