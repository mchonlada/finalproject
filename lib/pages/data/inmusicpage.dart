import 'package:finalproject/pages/music/inmusicdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class INMusicHome extends StatefulWidget {
  static const routeName = '/INMusichome';
  const INMusicHome({Key? key}) : super(key: key);

  @override
  _INMusicHomeState createState() => _INMusicHomeState();
}

class _INMusicHomeState extends State<INMusicHome> {
  final items = [
    Song(
      songTitle: 'Best Part',
      artist: 'Daniel Caesar x H.E.R.',
      image: '25.jpg',
      song: 'assets/25.mp3',
    ),
    Song(
      songTitle: 'Day 1 ◑',
      artist: 'HONNE',
      image: '26.jpg',
      song: 'assets/26.mp3',
    ),
    Song(
      songTitle: 'I Love You 3000',
      artist: 'Stephanie Poetri',
      image: '27.jpg',
      song: 'assets/27.mp3',
    ),
    Song(
      songTitle: 'Constant',
      artist: 'Jesse Barrera & Jeremy Passion',
      image: '28.jpg',
      song: 'assets/28.mp3',
    ),
    Song(
      songTitle: 'Nothing',
      artist: 'Jeremy Passion',
      image: '29.jpg',
      song: 'assets/29.mp3',
    ),
    Song(
      songTitle: 'Last Christmas',
      artist: 'Ariana Grande',
      image: '30.jpg',
      song: 'assets/30.mp3',
    ),
    Song(
      songTitle: 'How Deep is Your Love',
      artist: 'Bee Gees',
      image: '31.jpg',
      song: 'assets/31.mp3',
    ),
    Song(
      songTitle: 'lowkey',
      artist: 'NIKI',
      image: '32.jpg',
      song: 'assets/32.mp3',
    ),
    Song(
      songTitle: 'Sunflower',
      artist: 'Sierra Burgess',
      image: '33.jpg',
      song: 'assets/33.mp3',
    ),
    Song(
      songTitle: 'FLOWER GARDEN',
      artist: 'RAVI',
      image: '34.jpg',
      song: 'assets/34.mp3',
    ),
    Song(
      songTitle: 'Everytime',
      artist: 'CHEN x Punch',
      image: '35.jpg',
      song: 'assets/35.mp3',
    ),
    Song(
      songTitle: 'This Love',
      artist: 'Davichi',
      image: '36.jpg',
      song: 'assets/36.mp3',
    ),
    Song(
      songTitle: 'Just Vibe',
      artist: 'Jeff Bernat',
      image: '37.jpg',
      song: 'assets/37.mp3',
    ),
    Song(
      songTitle: 'Still',
      artist: 'Jeff Bernat',
      image: '38.jpg',
      song: 'assets/38.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2962FF),
        title: const Text(
          'INTERNATIONAL MUSIC',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: const AssetImage("assets/images/bglist.jpg"),
              fit: BoxFit.cover),
        ),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            var item = items[index];

            return Card(
                margin: const EdgeInsets.all(16.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      INMusicDetails.routeName,
                      arguments: Song(songTitle: item.songTitle, artist: item.artist, image: '${item.image}', song: '${item.song}'),
                    );
                    print(item);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/images/${item.image}',
                            width: 60.0, height: 60.0, fit: BoxFit.fill),
                        /*Icon(Icons.person),*/
                        SizedBox(width: 1.0),
                        Container(
                          margin: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                item.songTitle,
                                style: TextStyle(
                                    fontSize: 15.0, color: Color(0xFF3D5AFE)),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                item.artist,
                                style: TextStyle(
                                    fontSize: 15.0, color: Color(0xFF3D5AFE)),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ));
          },
        ),
      ),
    );
  }
}

class Song {
  final String songTitle;
  final String artist;
  final String image;
  final String song;
  Song({
    required this.songTitle,
    required this.artist,
    required this.image,
    required this.song,
  });
}

