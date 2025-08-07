import 'package:flutter/material.dart';
import 'package:further/spotiPages/Lyrics.dart';
import 'package:further/spotiPages/widgets/MusicController.dart';
import 'package:further/spotiPages/widgets/SongCard.dart';
import 'package:further/spotiPages/theme.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicpageState();
}

class _MusicpageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    double _currentPosition = 20.0;
    double _totalDuration = 30.0;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: BackButton(),
        title: Text('Now Playing', style: TextStyles.mediumblack),
        centerTitle: true,
        backgroundColor: AppColors.backgroundColor,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            iconSize: 30,
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                SongCard(
                  imagePath: 'assets/image/dua.png',
                  songName: 'songname',
                  artistName: 'artistname',
                ),
                Slider(
                  activeColor: Colors.grey[800],
                  value: _currentPosition,
                  max: _totalDuration,
                  onChanged: (value) {
                    setState(() {
                      _currentPosition = value;
                    });
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('duration'), Text('total')],
                ),
              ],
            ),
            MusicControlButtons(
              onRepeat: () {},
              onPrevious: () {},
              onPause: () {},
              onNext: () {},
              onShuffle: () {},
            ),
            Column(
              children: [
                IconButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LyricsPage()));
                }, icon: Icon(Icons.arrow_upward)),
                Text('Lyrics'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
