import 'package:finalproject/pages/data/inmusicpage.dart';
import 'package:finalproject/pages/data/thmusicpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MusicHome extends StatefulWidget {
  static const routeName = '/musichomepage';

  const MusicHome({Key? key}) : super(key: key);

  @override
  _MusicHomeState createState() => _MusicHomeState();
}

class _MusicHomeState extends State<MusicHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF4A148C),
          title: const Text(
            'HOME MUSIC',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: const AssetImage("assets/images/bm.jpg"),
                  fit: BoxFit.cover),
            ),
          child: Column(children: <Widget>[
          Container(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          height: MediaQuery
              .of(context)
              .size
              .height * 0.35,
          margin: const EdgeInsets.all(16.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const THMusicHome()),
              );
            },
            child: Card(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              elevation: 8,
              child: Container(
                child: Row(
                  children: [
                    Image.asset('assets/images/t.jpg',
                        width: 170.0, height: 170.0, fit: BoxFit.cover),
                    SizedBox(width: 1.0),
                    Container(
                      margin: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'THAI MUSIC',
                            style: TextStyle(fontSize: 25.0,color: Color(0xFF3D5AFE)),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ),
              ),
            ),
          ),
        ),
            Container(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.35,
                margin: const EdgeInsets.all(16.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const INMusicHome()),
                    );
                  },
                  child: Card(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 8,
                    child: Container(
                      child: Row(
                        children: [
                          Image.asset('assets/images/t2.jpg',
                              width: 170.0, height: 170.0, fit: BoxFit.cover),
                          SizedBox(width: 1.0),
                          Container(
                            margin: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'INTER MUSIC',
                                  style: TextStyle(fontSize: 25.0,color: Color(0xFF3D5AFE)),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ]
    )
        )
    );
  }
}
