import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playground/about.dart';
import 'package:playground/galleryPages/mcp.dart';
import 'package:playground/home.dart';
import 'package:playground/variables/variables.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Nav();
  }
}

class Nav extends StatelessWidget {
  const Nav({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Variables.textColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Variables.textColor),
            child: Center(
                child: Text("Minis&Bros - Miniatures",
                    style: GoogleFonts.cormorantUpright(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Variables.mainColor),
                    textAlign: TextAlign.center)),
          ),
          ListTile(
            title: Text(
              "Home",
              style: GoogleFonts.cormorantUpright(
                  fontSize: 25, color: Variables.mainColor),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home()));
            },
          ),
          ListTile(
            title: Text(
              "About",
              style: GoogleFonts.cormorantUpright(
                  fontSize: 25, color: Variables.mainColor),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const About()));
            },
          ),
          ExpansionTile(
            iconColor: Variables.mainColor,
            collapsedIconColor: Variables.mainColor,
            childrenPadding: const EdgeInsets.only(left: 30),
            title: Text(
              "Galerie",
              style: GoogleFonts.cormorantUpright(
                  fontSize: 25, color: Variables.mainColor),
            ),
            children: [
              ListTile(
                title: Text(
                  "A Song of Ice And Fire",
                  style: GoogleFonts.cormorantUpright(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Variables.secondColor),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  "Marvel Crisis Protocol",
                  style: GoogleFonts.cormorantUpright(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Variables.secondColor),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MCPApp()));
                },
              ),
              ListTile(
                title: Text(
                  "Star Wars Legion",
                  style: GoogleFonts.cormorantUpright(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Variables.secondColor),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  "Figurines Diverses",
                  style: GoogleFonts.cormorantUpright(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Variables.secondColor),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          ListTile(
            title: Text(
              "Battle Report",
              style: GoogleFonts.cormorantUpright(
                  fontSize: 25, color: Variables.mainColor),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              "Contactez moi",
              style: GoogleFonts.cormorantUpright(
                  fontSize: 25, color: Variables.mainColor),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
