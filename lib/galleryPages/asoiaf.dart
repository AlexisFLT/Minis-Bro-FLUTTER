import 'package:flutter/material.dart';
import 'package:playground/variables/variables.dart';
import 'package:google_fonts/google_fonts.dart';

class Asoiaf extends StatelessWidget {
  const Asoiaf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Variables.mainColor,
      ),
      backgroundColor: Variables.backgroundColor,
      body: Center(
        child: Column(
          children: [
            GestureDetector(
                onTap: () {},
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Image.asset(
                    "assets/tdf/asoiafLogo/stark.png",
                  ),
                )),
            const SizedBox(
              height: 8.0,
            ),
            Text("Targaryen",
                style: GoogleFonts.cormorantUpright(
                    fontSize: 30, color: Variables.guardColor)),
            const SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}
