import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:further/spotiPages/theme.dart';
import 'package:further/spotiPages/widgets/ArtistCard.dart';

class CustomTabBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onTabSelected;
  const CustomTabBar({
    super.key,
    required this.selectedIndex,
    required this.onTabSelected,
  });

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int selectedIndex = 0;
  final List<List<Map<String, String>>> tabContents = [
    [
      {
        'image': 'assets/image/ariana.png',
        'song':
            'Ariana'
            's Song',
        'artist': 'Ariana Grande',
      },
      {
        'image': 'assets/image/dua.png',
        'song':
            'Dua'
            's Song',
        'artist': 'Dua Lipa',
      },
    ],
    [
      {
        'image': 'assets/image/billie1.png',
        'song':
            'Billie'
            's Song',
        'artist': 'Billie Eilish',
      },
    ],
    [
      {
        'image': 'assets/image/dua.png',
        'song':
            'Dua'
            's Song',
        'artist': 'Dua Lipa',
      },
    ],
    [],
    [],
    [],
  ];

  final List<String> tabs = [
    'Tab 1',
    'Tab 2',
    'Tab 3',
    'Tab 4',
    'Tab 5',
    'Tab 6',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(tabs.length, (index) {
              final isSelected = selectedIndex == index;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },

                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 26, vertical: 10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: isSelected
                            ? AppColors.buttonColor
                            : Colors.transparent,
                        width: 3,
                      ),
                    ),
                  ),
                  child: Text(
                    tabs[index],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: isSelected ? Colors.black : Colors.grey[700],
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
        SizedBox(height: .02.sh),

        //sşarkıların çıktığı kısım
        SizedBox(
          height: 200.h,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: List.generate(tabContents[selectedIndex].length, (i) {
                  final item = tabContents[selectedIndex][i];
                  return ArtistCard(
                    imagePath: item['image'] ?? '',
                    songName: item['song'] ?? '',
                    artistName: item['artist'] ?? '',
                    onPlay: () {},
                  );
                }),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
