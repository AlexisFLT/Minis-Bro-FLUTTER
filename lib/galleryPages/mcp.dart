import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playground/nav.dart';
import 'package:playground/variables/variables.dart';

class MCPApp extends StatelessWidget {
  const MCPApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MCP(),
    );
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
      'id': 1,
      'name': "Groot",
      'subname': "I am Groot",
      'minisF': "assets/mcp/guard/Groot.png",
      'healthy': "assets/mcp/cards/guard/groot.png",
      'injured': "assets/mcp/cards/guard/grootKO.png",
    },
    {
      'id': 2,
      'name': "Rocket Raccoon",
      'subname': "Rocket Raccoon",
      'minisF': "assets/mcp/guard/rocket1.png",
      'minisB': "assets/mcp/guard/rocket2.png",
      'healthy': "assets/mcp/cards/guard/rocket.png",
      'injured': "assets/mcp/cards/guard/rocketKO.png",
    },
    {
      'id': 3,
      'name': "Star-Lord",
      'subname': "Peter Quill",
      'minisF': "assets/mcp/guard/starlordF.png",
      'minisB': "assets/mcp/guard/starlordB.png",
      'healthy': "assets/mcp/cards/guard/starlord.png",
      'injured': "assets/mcp/cards/guard/starlordKO.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
          backgroundColor: Variables.mainColor,
        ),
        backgroundColor: Variables.backgroundColor,
        drawer: const Nav(),
        body: Column(children: [
          const Padding(padding: EdgeInsets.only(top: 20)),
          Text(
            "The Guardians of the Galaxy",
            style: GoogleFonts.cormorantUpright(
                fontSize: 25, color: Variables.guardColor),
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
                      Image.asset((charList[index]['minisF'])),
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
        ]));
  }
}
