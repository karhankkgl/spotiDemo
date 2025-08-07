import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:further/spotiPages/MusicItemModel.dart';
import 'package:further/spotiPages/widgets/musicItemRow.dart';
import 'package:further/spotiPages/theme.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Text('Profile'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            iconSize: 30,
            onPressed: () {},
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Material(
              elevation: 6,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(80),
                bottomRight: Radius.circular(80),
              ),

              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/image/dua.png',
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text('mail'),
                  Text('username', style: TextStyles.boldblack),
                  SizedBox(height: .02.sh),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(children: [Text('231'), Text('Follower')]),
                      Column(children: [Text('231'), Text('Follower')]),
                    ],
                  ),
                  SizedBox(height: 0.03.sh),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Liked Songs', style: TextStyles.boldblack),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ListView.builder(
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
            ),
          ],
        ),
      ),
    );
  }
}
