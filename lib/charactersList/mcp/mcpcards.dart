import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playground/variables/variables.dart';

void showModalMCPCards(BuildContext context, Map<String, dynamic> charList) {
  showGeneralDialog(
    context: context,
    barrierDismissible: false,
    barrierLabel: charList['name'],
    transitionDuration: const Duration(milliseconds: 500),
    pageBuilder: (
      context,
      animation,
      secondaryAnimation,
    ) {
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
          title: Text(charList['name'],
              style: GoogleFonts.cormorantUpright(
                  fontSize: 30, color: Variables.backgroundColor)),
        ),
        backgroundColor: Variables.textColor.withOpacity(0.90),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Padding(
                padding: const EdgeInsets.only(left: 2, right: 2, bottom: 20),
                child: Image.asset(
                  charList['healthy'],
                  width: 500,
                )),
          ),
          Center(
            child: Padding(
                padding: const EdgeInsets.only(left: 2, right: 2, bottom: 20),
                child: Image.asset(
                  charList['injured'],
                  width: 500,
                )),
          )
        ]),
      );
    },
  );
}
