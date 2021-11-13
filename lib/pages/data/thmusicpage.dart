import 'package:finalproject/pages/music/thmusicdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class THMusicHome extends StatefulWidget {
  static const routeName = '/THMusichome';
  const THMusicHome({Key? key}) : super(key: key);

  @override
  _MusicHomeState createState() => _MusicHomeState();
}

class _MusicHomeState extends State<THMusicHome> {
  final items = [
    Song(
        songTitle: 'กอดที (ONE HUG)',
        artist: 'Bright Vachirawit (ไบร์ท วชิรวิชญ์)',
        image: '1.jpg',
        song: 'assets/1.mp3',

    ),
    Song(
        songTitle: 'ต่อจากนี้เพลงรักทุกเพลงจะเป็นของเธอเท่านั้น',
        artist: 'No One Else',
        image: '2.jpg',
        song: 'assets/2.mp3',

    ),
    Song(
        songTitle: 'เก็บความรู้สึกเก่ง (Invisible Tears)',
        artist: 'TAY TAWAN (เต ตะวัน)',
        image: '3.jpg',
        song: 'assets/3.mp3',
    ),
    Song(
        songTitle: 'ต้องชอบแค่ไหน (FIRST LOVE)',
        artist: 'PRETZELLE',
        image: '4.jpg',
        song: 'assets/4.mp3',
    ),
    Song(
        songTitle: 'MONEY HONEY (Prod. By URBOYTJ)',
        artist: 'F.HERO x URBOYTJ Ft. MINNIE ((G)I-DLE)',
        image: '5.jpg',
        song: 'assets/5.mp3',
    ),
    Song(
        songTitle: 'แฟนเก่าคนโปรด (my fav ex)',
        artist: 'SLAPKISS',
        image: '6.jpg',
        song: 'assets/6.mp3',

    ),
    Song(
        songTitle: 'จันทร์อังคารพุธพฤหัสศุกร์เสาร์อาทิตย์',
        artist: 'Patrickananda',
        image: '7.jpg',
        song: 'assets/7.mp3',
    ),
    Song(
        songTitle: 'วัดปะหล่ะ? (TEST ME)',
        artist: '4EVE',
        image: '8.jpg',
        song: 'assets/8.mp3',
    ),
    Song(
        songTitle: 'ตั้งแต่มีเธอฉันมีความสุข (This Time)',
        artist: 'Violette Wautier',
        image: '9.jpg',
        song: 'assets/9.mp3',
    ),
    Song(
        songTitle: 'Ten Years Later',
        artist: 'WIN METAWIN (วิน เมธวิน)',
        image: '10.jpg',
        song: 'assets/10.mp3',
    ),
    Song(
        songTitle: 'ห้ามใจไม่อยู่ (is it you?)',
        artist: 'Earth Patravee',
        image: '11.jpg',
         song: 'assets/11.mp3',
    ),
    Song(
        songTitle: 'ฟิโลโฟเบีย (Philophobia)',
        artist: 'PONWP x DEASY',
        image: '12.jpg',
        song: 'assets/12.mp3',
    ),
    Song(
        songTitle: 'กลางทะเล Feat.TØEYKÍ',
        artist: 'PONWP x TØEYKÍ',
        image: '13.jpg',
        song: 'assets/13.mp3'
    ),
    Song(
        songTitle: 'มาตรฐานสูง',
        artist: 'MARC TATCHAPON',
        image: '14.jpg',
        song: 'assets/14.mp3',
    ),
    Song(
        songTitle: 'แปะหัวใจ',
        artist: 'JAONAAY ft. Juné',
        image: '15.jpg',
        song: 'assets/15.mp3',
    ),
    Song(
        songTitle: 'จำเลยรัก (Defendant Of Love) ',
        artist: 'F.HERO Ft. Txrbo',
        image: '16.jpg',
        song: 'assets/16.mp3',
    ),
    Song(
        songTitle: 'เพื่อนเล่น ไม่เล่นเพื่อน (Just Being Friendly)',
        artist: 'Tilly Birds Feat. MILLI',
        image: '17.jpg',
        song: 'assets/17.mp3',
    ),
    Song(
        songTitle: 'สถานีดวงจันทร์',
        artist: 'WhatChaRaWaLee',
        image: '18.jpg',
        song: 'assets/18.mp3',
    ),
    Song(
        songTitle: 'Dance with Me',
        artist: 'Blackbeans',
        image: '19.jpg',
        song: 'assets/19.mp3',
    ),
    Song(
        songTitle: 'Flower and Wine (Photosynthesis)',
        artist: 'Blackbeans',
        image: '20.jpg',
        song: 'assets/20.mp3',
    ),
    Song(
        songTitle: 'วันเกิดฉันปีนี้ (HBD to me)',
        artist: 'Three Man Down',
        image: '21.jpg',
        song: 'assets/21.mp3',
    ),
    Song(
        songTitle: 'WHY?',
        artist: 'LEE THANAT (ลี ฐานัฐพ์)',
        image: '22.jpg',
        song: 'assets/22.mp3',
    ),
    Song(
        songTitle: 'พิง',
        artist: 'NONT TANONT',
        image: '23.jpg',
        song: 'assets/23.mp3',
    ),
    Song(
        songTitle: 'ธรรมดาแสนพิเศษ (Extraordinary)',
        artist: 'ANATOMY RABBIT ',
        image: '24.jpg',
        song: 'assets/24.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF311B92),
        title: const Text(
          'THAI MUSIC',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: const AssetImage("assets/images/b.jpg"),
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
                      THMusicDetails.routeName,
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
                                style: TextStyle(fontSize: 15.0,color: Color(0xFF3D5AFE)),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                item.artist,
                                style: TextStyle(fontSize: 15.0,color: Color(0xFF3D5AFE)),
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
