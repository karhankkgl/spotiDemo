import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:further/spotiPages/ArtistPage.dart';
import 'package:further/spotiPages/home/HomePage.dart';
import 'package:further/spotiPages/ProfilePage.dart';
import 'package:further/spotiPages/theme.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class Controllerhomepage extends StatefulWidget {
  const Controllerhomepage({super.key});

  @override
  State<Controllerhomepage> createState() => _ControllerhomepageState();
}

class _ControllerhomepageState extends State<Controllerhomepage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    Placeholder(),
    ArtistPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: _pages[_selectedIndex],
      bottomNavigationBar: StylishBottomBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,

        backgroundColor: AppColors.backgroundColor,
        
        items: [
          BottomBarItem(
            icon: const Icon(FontAwesomeIcons.house),
            title: const Text('Home'),selectedColor: AppColors.buttonColor
          ),
          BottomBarItem(
            icon: const Icon(FontAwesomeIcons.compass),
            title: const Text('Explore'),selectedColor: AppColors.buttonColor
          ),
          BottomBarItem(
            icon: const Icon(FontAwesomeIcons.heart),
            title: const Text('Favorite'),selectedColor: AppColors.buttonColor
          ),
          BottomBarItem(
            icon: const Icon(FontAwesomeIcons.user),
            title: const Text('Profile'),selectedColor: AppColors.buttonColor
          ),
        ],
        option: AnimatedBarOptions(
          barAnimation: BarAnimation.transform3D,
          iconStyle: IconStyle.simple,
        ),
      ),
    );
  }
}
