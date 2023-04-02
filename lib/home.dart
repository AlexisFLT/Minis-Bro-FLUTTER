import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playground/galerie.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

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
              Navigator.pop(context);
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
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              "Galerie",
              style: GoogleFonts.cormorantUpright(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Galerie()),
              );
            },
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
