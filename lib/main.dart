import 'package:finalproject/pages/data/inmusicpage.dart';
import 'package:finalproject/pages/data/thmusicpage.dart';
import 'package:finalproject/pages/home/homepage.dart';
import 'package:finalproject/pages/music/inmusicdetails.dart';
import 'package:finalproject/pages/music/musichomepage.dart';
import 'package:finalproject/pages/music/thmusicdetails.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MUSIC',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        fontFamily: GoogleFonts.prompt().fontFamily,
      ),
      home: HomePage(),
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        MusicHome.routeName:  (context) => const MusicHome(),
        THMusicHome.routeName: (context) => const THMusicHome(),
        INMusicHome.routeName: (context) => const INMusicHome(),
        THMusicDetails.routeName:(context) => const THMusicDetails(),
        INMusicDetails.routeName:(context) => const INMusicDetails()
      },
    );
  }
}

