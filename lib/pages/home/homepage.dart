import 'package:finalproject/pages/music/musichomepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


class HomePage extends StatefulWidget {
  static const routeName = '/homepage';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: const AssetImage("assets/images/bghome.jpg"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/bg.png',
              width: 300,
                height: 300,
              ),
             DefaultTextStyle(
            style: const TextStyle(
              fontSize: 20.0,
            ),
               child: AnimatedTextKit(
                 animatedTexts: [
                   WavyAnimatedText('MUSIC TIME',textStyle: GoogleFonts.quicksand(
                       fontSize: 30,color: Colors.white
                   ),),
                   WavyAnimatedText('CLICK',textStyle: GoogleFonts.quicksand(
                       fontSize: 30,color: Colors.white
                   ),),
                 ],
                 isRepeatingAnimation: true,
                 onTap: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const MusicHome()),
                   );
                 },
               ),
             ),
          ],
        ),
      ),
    ));
  }
}
