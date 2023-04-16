import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playground/charactersList/asoiaf/asoiafCharList.dart';
import 'package:playground/variables/variables.dart';

class TargApp extends StatelessWidget {
  const TargApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Targaryen();
  }
}

class Targaryen extends StatefulWidget {
  const Targaryen({super.key});

  @override
  State<Targaryen> createState() => _Targaryen();
}

class _Targaryen extends State<Targaryen> {
  late CharactersASOIAF charactersASOIAF;
  late List<Map<String, dynamic>> charListAsoiaf;

  @override
  void initState() {
    super.initState();
    charactersASOIAF = CharactersASOIAF();
    charListAsoiaf = charactersASOIAF.charListAsoiaf;
  }

  // void _showModalMCPAbout(BuildContext context) {
  //   showModalMCPAbout(context);
  // }

  // void _showModalMCPCards(BuildContext context, int index) {
  //   showModalMCPCards(context, charListAsoiaf[index]);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Variables.targColor,
          title: Text(
            "Targaryen",
            style: GoogleFonts.cormorantUpright(
                fontSize: 30,
                color: Variables.backgroundColor,
                fontWeight: FontWeight.w500),
          ),
        ),
        backgroundColor: Variables.backgroundColor,
        body: Column(children: [
          const Padding(padding: EdgeInsets.only(top: 20)),
          SizedBox(
            child: CarouselSlider.builder(
                options: CarouselOptions(
                  autoPlay: false,
                  height: 750,
                  enlargeCenterPage: true,
                  viewportFraction: 0.9,
                  enableInfiniteScroll: true,
                  pageSnapping: true,
                ),
                itemCount: charListAsoiaf.length,
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Card(
                    color: Colors.transparent,
                    elevation: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                            onTap: () {
                              // _showModalMCPCards(context, index);
                            },
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child:
                                  Image.asset((charListAsoiaf[index]['src'])),
                            )),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(charListAsoiaf[index]['name'],
                            style: GoogleFonts.cormorantUpright(
                                fontSize: 30, color: Variables.targColor)),
                        const SizedBox(height: 8.0),
                        Text(
                          charListAsoiaf[index]['subname'],
                          style: GoogleFonts.cormorantUpright(
                              fontStyle: FontStyle.italic,
                              fontSize: 18,
                              color: Variables.targColor),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ]));
  }
}
