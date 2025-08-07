import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:further/spotiPages/theme.dart';

class MusicControlButtons extends StatelessWidget {
  final VoidCallback onRepeat;
  final VoidCallback onPrevious;
  final VoidCallback onPause;
  final VoidCallback onNext;
  final VoidCallback onShuffle;

  const MusicControlButtons({
    super.key,
    required this.onRepeat,
    required this.onPrevious,
    required this.onPause,
    required this.onNext,
    required this.onShuffle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: onRepeat,
            icon: Icon(FontAwesomeIcons.repeat),
            iconSize: 20,
          ),
          IconButton(
            onPressed: onPrevious,
            icon: Icon(Icons.skip_previous_rounded),
            iconSize: 30,
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.buttonColor,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              padding: EdgeInsets.all(20),
              onPressed: onPause,
              icon: Icon(Icons.pause_sharp),
              iconSize: 20,
              color: AppColors.backgroundColor,
            ),
          ),
          IconButton(
            onPressed: onNext,
            icon: Icon(Icons.skip_next_rounded),
            iconSize: 30,
          ),
          IconButton(
            onPressed: onShuffle,
            icon: Icon(FontAwesomeIcons.shuffle),
            iconSize: 20,
          ),
        ],
      ),
    );
  }
}
