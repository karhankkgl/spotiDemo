import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:further/spotiPages/Album.dart';
import 'package:further/spotiPages/MusicItemModel.dart';
import 'package:further/spotiPages/widgets/AlbumCard.dart';
import 'package:further/spotiPages/widgets/musicItemRow.dart';
import 'package:further/spotiPages/theme.dart';

class ArtistPage extends StatefulWidget {
  const ArtistPage({super.key});

  @override
  State<ArtistPage> createState() => _ArtistPageState();
}

class _ArtistPageState extends State<ArtistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            iconSize: 30,
            onPressed: () {},
          ),
        ],
      ),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: SingleChildScrollView(
          child: Column(
          
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: .25.sh,
                width: double.infinity,
                child: Image.asset(
                  'assets/image/dua.png',
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                    bottomRight: Radius.circular(80),
                  ),
                ),
              ),
              
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Artistname', style: TextStyles.boldblack),
                        Text('Artist Album & Track count'),
                        SizedBox(height: .02.sh),
                        Text(
                          textAlign: TextAlign.center,
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis adipiscing vestibulum orci enim, nascetur vitae ',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          
                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Text(
                  textAlign: TextAlign.start,
                  'Albums',
                  style: TextStyles.boldblack,
                ),
              ),
              SizedBox(
                height: .24.sh,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: albumList.length,
                  itemBuilder: (BuildContext context, int index) {
                    final album = albumList[index];
                    return AlbumCard(album: album);
                  },
                ),
              ),
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0,vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      'Songs',
                      style: TextStyles.boldblack,
                    ),
                    TextButton(onPressed: () {}, child: Text('See More')),
                  ],
                ),
              ),
            
          
              ListView.builder(
                itemCount: musicList.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
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
      ),
    );
  }
}
