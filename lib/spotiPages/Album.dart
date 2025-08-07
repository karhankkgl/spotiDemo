import 'package:further/spotiPages/MusicItemModel.dart';

class Album {
  final String albumName;
  final String artistName;
  final String? coverImage;
  final int? releaseYear;
  final List<MusicItemModel> songs;

  Album({
    required this.albumName,
    required this.artistName,
    this.coverImage,
    this.releaseYear,
    required this.songs,
  });
}

final List<Album> albumList = [
  Album(
    albumName: 'Happier Than Ever',
    artistName: 'Billie Eilish',
    coverImage:
        'https://upload.wikimedia.org/wikipedia/en/6/69/Billie_Eilish_-_Happier_Than_Ever.png',
    releaseYear: 2021,
    songs: [
      MusicItemModel(
        songName: 'Getting Older',
        artistName: 'Billie Eilish',
        duration: Duration(minutes: 4, seconds: 5),
        albumName: 'Happier Than Ever',
        coverUrl:
            'https://upload.wikimedia.org/wikipedia/en/6/69/Billie_Eilish_-_Happier_Than_Ever.png',
      ),
      MusicItemModel(
        songName: 'I Didn\'t Change My Number',
        artistName: 'Billie Eilish',
        duration: Duration(minutes: 3, seconds: 40),
        albumName: 'Happier Than Ever',
        coverUrl:
            'https://upload.wikimedia.org/wikipedia/en/6/69/Billie_Eilish_-_Happier_Than_Ever.png',
      ),
    ],
  ),

  Album(
    albumName: 'After Hours',
    artistName: 'The Weeknd',
    coverImage:
        'https://upload.wikimedia.org/wikipedia/en/5/5e/The_Weeknd_-_After_Hours.png',
    releaseYear: 2020,
    songs: [
      MusicItemModel(
        songName: 'Alone Again',
        artistName: 'The Weeknd',
        duration: Duration(minutes: 4, seconds: 10),
        albumName: 'After Hours',
        coverUrl:
            'https://upload.wikimedia.org/wikipedia/en/5/5e/The_Weeknd_-_After_Hours.png',
      ),
      MusicItemModel(
        songName: 'Blinding Lights',
        artistName: 'The Weeknd',
        duration: Duration(minutes: 3, seconds: 20),
        albumName: 'After Hours',
        coverUrl:
            'https://upload.wikimedia.org/wikipedia/en/5/5e/The_Weeknd_-_After_Hours.png',
      ),
    ],
  ),

  Album(
    albumName: 'Future Nostalgia',
    artistName: 'Dua Lipa',
    coverImage:
        'https://upload.wikimedia.org/wikipedia/en/5/5e/Dua_Lipa_-_Future_Nostalgia_%28Official_Album_Cover%29.png',
    releaseYear: 2020,
    songs: [
      MusicItemModel(
        songName: 'Don\'t Start Now',
        artistName: 'Dua Lipa',
        duration: Duration(minutes: 3, seconds: 3),
        albumName: 'Future Nostalgia',
        coverUrl:
            'https://upload.wikimedia.org/wikipedia/en/5/5e/Dua_Lipa_-_Future_Nostalgia_%28Official_Album_Cover%29.png',
      ),
      MusicItemModel(
        songName: 'Physical',
        artistName: 'Dua Lipa',
        duration: Duration(minutes: 3, seconds: 14),
        albumName: 'Future Nostalgia',
        coverUrl:
            'https://upload.wikimedia.org/wikipedia/en/5/5e/Dua_Lipa_-_Future_Nostalgia_%28Official_Album_Cover%29.png',
      ),
    ],
  ),
];
