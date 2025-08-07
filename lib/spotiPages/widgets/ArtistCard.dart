import 'package:flutter/material.dart';
import 'package:further/spotiPages/theme.dart';

class ArtistCard extends StatelessWidget {
  final String imagePath;
  final String songName;
  final String artistName;
  final VoidCallback onPlay;
  final double width;
  final double height;

  const ArtistCard({
    Key? key,
    required this.imagePath,
    required this.songName,
    required this.artistName,
    required this.onPlay,
    this.width = 160,
    this.height = 200,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
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
              Positioned(
                bottom: 8,
                right: 8,
                child: InkWell(
                  onTap: onPlay,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.buttonColor,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(
                      Icons.play_arrow,
                      color: AppColors.backgroundColor,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            songName,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            artistName,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
