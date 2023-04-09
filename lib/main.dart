import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playground/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Minis&Bros',
      home: Home(),
    );
  }
}
