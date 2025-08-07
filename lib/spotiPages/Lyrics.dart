import 'package:flutter/material.dart';
import 'package:further/spotiPages/widgets/MusicController.dart';
import 'package:further/spotiPages/theme.dart';

class LyricsPage extends StatefulWidget {
  const LyricsPage({super.key});

  @override
  State<LyricsPage> createState() => _LyricsPageState();
}

class _LyricsPageState extends State<LyricsPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          top: -30,
          child: Image.asset('assets/image/ariana.png',fit: BoxFit.cover,),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: BackButton(color: Colors.white,),
            title: Text('Lyrics', style: TextStyles.mediumwhite),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            actions: [
              IconButton(
                icon: Icon(Icons.more_vert, color: Colors.white),
                iconSize: 30,
                onPressed: () {},
              ),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1,
                        height: 3,
                        wordSpacing: .6,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.start,
                      'Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr textv Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text Çok uzun birr text ',
                    ),
                  ),
                ),
              ),

              Container(
                color: AppColors.backgroundColor,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/image/dua.png',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'songName',
                                    style: TextStyles.mediumblack,
                                  ),
                                  Text(
                                    'ArtistName',
                                    style: TextStyles.lightblack,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                      Slider(value: 0, onChanged: null),
                      MusicControlButtons(
                        onRepeat: () {},
                        onPrevious: () {},
                        onPause: () {},
                        onNext: () {},
                        onShuffle: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
