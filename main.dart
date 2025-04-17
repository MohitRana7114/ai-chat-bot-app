import 'package:chatbot/pages/chat_page.dart';
import 'package:chatbot/pages/home_page.dart';
import 'package:chatbot/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:chatbot/widgets/sources_secation.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chatbot Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        scaffoldBackgroundColor: ac.background,
        colorScheme: ColorScheme.fromSeed(seedColor: ac.submitButton),
        textTheme: GoogleFonts.interTextTheme(
          ThemeData.dark().textTheme.copyWith(
            bodyMedium: const TextStyle(
              fontSize: 15,
              color: ac.whiteColor,
            )
          ),
        ),
      ),
      home: const HomePage(),

    );
  }
}

