import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/ecosystem_screen.dart';

void main() {
  runApp(const ZooAdventureApp());
}

class ZooAdventureApp extends StatelessWidget {
  const ZooAdventureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zoo Adventure',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFE8F6EF), // Un color más claro y verde
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xFFE8F6EF),
          elevation: 0,
          titleTextStyle: GoogleFonts.poppins(
            color: const Color(0xFF333333),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: const IconThemeData(color: Color(0xFF3D9970)),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme.apply(
            bodyColor: const Color(0xFF333333),
            displayColor: const Color(0xFF333333),
          ),
        ),
        cardColor: const Color(0xFFFFFFFF),
      ),
      home: EcosystemScreen(),
    );
  }
}