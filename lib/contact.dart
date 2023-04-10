import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playground/nav.dart';
import 'package:playground/variables/variables.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Variables.mainColor,
      ),
      backgroundColor: Variables.backgroundColor,
      drawer: const Nav(),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  "Me contacter",
                  style: GoogleFonts.cormorantUpright(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Variables.textColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  "Une question, une demande, un avis ou suggestion ? C'est par ici !",
                  style: GoogleFonts.cormorantUpright(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Variables.textColor),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 16,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Name",
                        border: InputBorder.none,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Email",
                        border: InputBorder.none,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const TextField(
                      maxLines: 7,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Message",
                        border: InputBorder.none,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    MaterialButton(
                      height: 40,
                      minWidth: double.infinity,
                      color: Variables.mainColor,
                      onPressed: () {},
                      child: Text(
                        "Envoyer",
                        style: GoogleFonts.cormorantUpright(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Variables.backgroundColor),
                      ),
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
