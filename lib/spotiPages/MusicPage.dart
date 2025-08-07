import 'package:flutter/material.dart';
import 'package:further/spotiPages/Lyrics.dart';
import 'package:further/spotiPages/MusicItemModel.dart';
import 'package:further/spotiPages/widgets/MusicController.dart';
import 'package:further/spotiPages/widgets/SongCard.dart';
import 'package:further/spotiPages/theme.dart';

class MusicPage extends StatefulWidget {
  final MusicItemModel musicItem;

  const MusicPage({super.key, required this.musicItem});

  @override
  State<MusicPage> createState() => _MusicpageState();
}

class _MusicpageState extends State<MusicPage> {
  late double _currentPosition;
  late double _totalDuration;

  @override
  void initState() {
    super.initState();
    _currentPosition = 0.0;
    _totalDuration = widget.musicItem.duration.inSeconds.toDouble();
  }

  @override
  Widget build(BuildContext context) {
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
                SongCard(musicItem: widget.musicItem),
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
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LyricsPage()),
                    );
                  },
                  icon: Icon(Icons.arrow_upward),
                ),
                Text('Lyrics'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
