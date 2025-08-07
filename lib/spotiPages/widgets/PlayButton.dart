import 'package:flutter/material.dart';

class Playbutton extends StatelessWidget {
  final Function() onPressed;
  final double size;

  const Playbutton({
    Key? key,
    required this.onPressed,
    this.size = 30}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[400],
      shape: const CircleBorder(),
      child: InkWell(
        onTap: onPressed,
        customBorder: const CircleBorder(),
        splashColor: Colors.black26,
        highlightColor: Colors.black12,
        child: SizedBox(
          width: size,
          height: size,
          child: Icon(Icons.play_arrow,color: Colors.black87, size: size * .6,),
          
        ),
      )
    );
  }
}
