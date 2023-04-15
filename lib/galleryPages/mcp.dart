// ignore_for_file: unnecessary_cast

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playground/Modal/mcp/mcpabout.dart';
import 'package:playground/charactersList/mcp/mcpList.dart';
import 'package:playground/charactersList/mcp/mcpcards.dart';
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
  late CharactersMCP charactersMCP;
  late List<Map<String, dynamic>> charList;

  @override
  void initState() {
    super.initState();
    charactersMCP = CharactersMCP();
    charList = charactersMCP.charList;
  }

  void _showModalMCPAbout(BuildContext context) {
    showModalMCPAbout(context);
  }

  void _showModalMCPCards(BuildContext context, int index) {
    showModalMCPCards(context, charList[index]);
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
                            _showModalMCPCards(context, index);
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
