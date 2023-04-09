import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playground/about.dart';
import 'package:playground/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Nav(),
    );
  }
}

class Nav extends StatelessWidget {
  const Nav({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromRGBO(172, 170, 188, 74),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration:
                const BoxDecoration(color: Color.fromRGBO(0, 144, 99, 56)),
            child: Center(
                child: Text("Minis&Bros - Miniatures",
                    style: GoogleFonts.cormorantUpright(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center)),
          ),
          ListTile(
            title: Text(
              "Home",
              style: GoogleFonts.cormorantUpright(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
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
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const About()));
            },
          ),
          ExpansionTile(
            title: Text(
              "Galerie",
              style: GoogleFonts.cormorantUpright(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            children: [
              ListTile(
                title: Text(
                  "A Song of Ice And Fire",
                  style: GoogleFonts.cormorantUpright(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
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
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  "Star Wars Legion",
                  style: GoogleFonts.cormorantUpright(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
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
                  ),
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
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              "Contactez moi",
              style: GoogleFonts.cormorantUpright(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
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
