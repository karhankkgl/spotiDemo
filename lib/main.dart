import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:further/spotiPages/user/Loading.dart';

void main() {
  runApp(const MyApp());
}

const fixedEmail = 'test';
const fixedPassword = '123';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        title: 'Spotify Demo',
        debugShowCheckedModeBanner: false,
        
        theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: 'Satoshi',
        ),
        home: Loading(),
      ),
    );
  }
}
