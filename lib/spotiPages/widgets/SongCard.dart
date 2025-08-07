import 'package:flutter/material.dart';
import 'package:further/spotiPages/MusicItemModel.dart';
import 'package:further/spotiPages/theme.dart';

class SongCard extends StatefulWidget {
  final MusicItemModel musicItem;

  final double width;
  final double height;

  const SongCard({
    Key? key,
    required this.musicItem,
    this.width = 400,
    this.height = 420,
  }) : super(key: key);

  @override
  State<SongCard> createState() => _SongCardState();
}

class _SongCardState extends State<SongCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child:
                (widget.musicItem.coverUrl != null &&
                    widget.musicItem.coverUrl!.isNotEmpty)
                ? Image.network(
                    widget.musicItem.coverUrl!,
                    width: widget.width,
                    height: widget.height,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, StackTrace) {
                      return Container(
                        height: widget.height,
                        width: widget.width,
                        color: Colors.grey[300],
                        child: Icon(
                          Icons.broken_image,
                          size: 30,
                          color: Colors.grey,
                        ),
                      );
                    },
                  )
                : Container(
                    height: widget.height,
                    width: widget.width,
                    color: Colors.grey[300],
                    child: Icon(
                      Icons.broken_image,
                      size: 30,
                      color: Colors.grey,
                    ),
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
                    Text(
                      widget.musicItem.songName,
                      style: TextStyles.mediumblack,
                    ),
                    Text(
                      widget.musicItem.artistName,
                      style: TextStyles.lightblack,
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                color: widget.musicItem.isFavorite ? Colors.red : Colors.grey,
                onPressed: () {
                  setState(() {
                    widget.musicItem.isFavorite = !widget.musicItem.isFavorite;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
