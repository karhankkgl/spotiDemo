import 'package:flutter/material.dart';
import 'package:further/spotiPages/theme.dart';

class SongCard extends StatelessWidget {
  final String imagePath;
  final String songName;
  final String artistName;
  final double width;
  final double height;

  const SongCard({
    Key? key,
    required this.imagePath,
    required this.songName,
    required this.artistName,
    this.width = 400,
    this.height = 420,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imagePath,
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(songName, style: TextStyles.mediumblack),
                    Text(artistName, style: TextStyles.lightblack),
                  ],
                ),
              ),
              IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
