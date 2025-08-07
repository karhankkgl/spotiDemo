import 'package:flutter/material.dart';
import 'package:further/spotiPages/GetStarted.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => GetStarted()),
          );
        },
        child: Center(child: SpotifyLogo()),
      ),
    );
  }
}

class SpotifyLogo extends StatelessWidget {
  final double width;

  const SpotifyLogo({super.key, this.width = 200.0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Image.asset('assets/image/SpotifyLogo.png', fit: BoxFit.contain),
    );
  }
}
