import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:further/spotiPages/MusicItemModel.dart';
import 'package:further/spotiPages/user/Loading.dart';
import 'package:further/spotiPages/widgets/CustomTabBar.dart';
import 'package:further/spotiPages/widgets/musicItemRow.dart';
import 'package:further/spotiPages/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.search), onPressed: () {}),
        title: SpotifyLogo(width: 150),
        centerTitle: true,
        backgroundColor: AppColors.backgroundColor,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            iconSize: 30,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      color: AppColors.buttonColor,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('New Album', style: TextStyles.mediumwhite),
                            Text(
                              'Happier Than\nEver',
                              style: TextStyles.boldwhite,
                            ),
                            Text('Billie Eilish', style: TextStyles.lightwhite),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 50.w,
                  child: Image.asset('assets/image/billie2.png'),
                ),
              ],
            ),

            CustomTabBar(
              selectedIndex: selectedIndex,
              onTabSelected: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Playlist', style: TextStyles.boldblack),
                      TextButton(
                        onPressed: () {},
                        child: Text('See More', style: TextStyles.lightblack),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),

                  ListView.builder(
                    itemCount: musicList.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),

                    itemBuilder: (BuildContext context, int index) {
                      final music = musicList[index];
                      return Musicitemrow(
                        onPlayPressed: () {},
                        onLikePressed: () {
                          print('music liked ${music.songName}');
                        },
                        musicItem: music,
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
