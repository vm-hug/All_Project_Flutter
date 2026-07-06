import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_dentict/page/home_page.dart' show HomePage;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Healder App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Color(0xff5a73d8),
        textTheme: GoogleFonts.plusJakartaSansTextTheme(
          Theme.of(context).textTheme,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
