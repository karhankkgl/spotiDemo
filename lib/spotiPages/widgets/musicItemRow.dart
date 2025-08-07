import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:further/spotiPages/MusicItemModel.dart';
import 'package:further/spotiPages/MusicPage.dart';
import 'package:further/spotiPages/widgets/PlayButton.dart';
import 'package:further/spotiPages/theme.dart';

class Musicitemrow extends StatefulWidget {
  final MusicItemModel musicItem;
  final VoidCallback onPlayPressed;
  final VoidCallback onLikePressed;

  const Musicitemrow({
    super.key,
    required this.musicItem,
    required this.onPlayPressed,
    required this.onLikePressed,
  });

  @override
  State<Musicitemrow> createState() => _MusicitemrowState();
}

class _MusicitemrowState extends State<Musicitemrow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10),
      child: Row(
        children: [
          SizedBox(width: 10.w),
          Playbutton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MusicPage(musicItem: widget.musicItem),
                ),
              );
            },
            size: 40,
          ),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.musicItem.songName, style: TextStyles.mediumblack),
                Text(widget.musicItem.artistName, style: TextStyles.lightblack),
              ],
            ),
          ),
          Text(
            '${widget.musicItem.duration.inMinutes}:${(widget.musicItem.duration.inSeconds % 60).toString().padLeft(2, '0')}',
          ),
          IconButton(
            onPressed: () {
              setState(() {
                widget.musicItem.isFavorite = !widget.musicItem.isFavorite;
              });

            },
            icon: Icon(Icons.favorite),
            color: widget.musicItem.isFavorite ? Colors.red : Colors.grey,
          ),
        ],
      ),
    );
  }
}
