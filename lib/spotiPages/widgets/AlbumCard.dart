// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:further/spotiPages/Album.dart';

class AlbumCard extends StatelessWidget {
  final Album album;

  final double width;
  final double height;

  const AlbumCard({
    super.key,
    this.width = 160,
    this.height = 160,
    required this.album,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: (album.coverImage != null && album.coverImage!.isNotEmpty)
                ? Image.network(
                    album.coverImage!,
                    width: width,
                    height: height,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, StackTrace) {
                      return Container(
                        height: height,
                        width: width,
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
                    height: height,
                    width: width,
                    color: Colors.grey[300],
                    child: Icon(
                      Icons.broken_image,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
          ),
          SizedBox(height: 8),
          Text(album.albumName),
        ],
      ),
    );
  }
}
