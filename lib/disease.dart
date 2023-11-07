import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart' as rxdart;
import 'music_player.dart';
import 'seekbar.dart';

class DiseaseSongScreen extends StatelessWidget {
  final String disease;

  DiseaseSongScreen({required this.disease});

  @override
  Widget build(BuildContext context) {
    // Fetch songs based on the selected disease
    List<DiseaseSong> songs = getSongsForDisease(disease);

    return Scaffold(
      appBar: AppBar(
        title: Text('Songs for $disease'),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              // Color.fromARGB(255, 102, 7, 119).withOpacity(0.8),
              // Colors.purple.shade200.withOpacity(0.8),
              Colors.blue.shade800.withOpacity(0.8),
              Colors.blue.shade200.withOpacity(0.8),
            ])),
        child: ListView.builder(
          itemCount: songs.length,
          itemBuilder: (context, index) {
            return DiseaseSongCard(diseaseSong: songs[index]);
          },
        ),
      ),
    );
  }

  List<DiseaseSong> getSongsForDisease(String disease) {
    switch (disease) {
      case 'Heart Disease':
        return [
          DiseaseSong(
            title: 'Lalit',
            description: 'Jog',
            url: 'assets/audio/Raag_Lalit_Alap.mpeg',
            coverUrl: 'assets/img/tanpura1.jpg',
          ),
          DiseaseSong(
            title: 'BasantMukhari',
            description: '',
            url: 'assets/audio/Raag_BasantMukhari_Alap.mpeg',
            coverUrl: 'assets/img/sarangi.jpg',
          ),
          DiseaseSong(
            title: 'Des',
            description: '',
            url: 'assets/audio/Raag_Des_Alap.mpeg',
            coverUrl: 'assets/img/sitar.jpeg',
          ),
          DiseaseSong(
            title: 'Shree',
            description: '',
            url: 'assets/audio/Raag_Shree_Alap.mpeg',
            coverUrl: 'assets/img/piano.jpg',
          ),
          // Add more songs for Heart Disease as needed
        ];
      case 'Diabetes':
        return [
          DiseaseSong(
            title: 'Hansdhwani',
            description: 'Malkauns',
            url: 'assets/audio/Raag_Hansdhwani_Alap.mpeg',
            coverUrl: 'assets/img/flute.jpg',
          ),
          DiseaseSong(
            title: 'Malkauns',
            description: 'Malkauns',
            url: 'assets/audio/Raag_Malkauns_Alap.mpeg',
            coverUrl: 'assets/img/sitar1.jpg',
          ),
          DiseaseSong(
            title: 'Jog',
            description: '',
            url: 'assets/audio/Raag_Jog_Alap.mp4',
            coverUrl: 'assets/img/tanpura.jpg',
          ),
          DiseaseSong(
            title: 'TilakKamod',
            description: '',
            url: 'assets/audio/Raag_TilakKamod_Alap.mpeg',
            coverUrl: 'assets/img/sitar4.jpg',
          ),
          // Add more songs for Diabetes as needed
        ];
      case 'Mental Health':
        return [
          DiseaseSong(
            title: 'Marwa',
            description: '',
            url: 'assets/audio/Raag_Marawa_Alap.mpeg',
            coverUrl: 'assets/img/surbahar.jpg',
          ),
          DiseaseSong(
            title: 'MiyakiTodi',
            description: '',
            url: 'assets/audio/Raag_MiyakiTodi_Alap.mpeg',
            coverUrl: 'assets/img/sitar2.jpeg',
          ),
          DiseaseSong(
            title: 'Rageshree',
            description: '',
            url: 'assets/audio/Raag_Rageshree_Alap.mpeg',
            coverUrl: 'assets/img/sitar3.jpg',
          ),
          DiseaseSong(
            title: 'Yaman',
            description: '',
            url: 'assets/audio/Raag_Yaman_Alap.mpeg',
            coverUrl: 'assets/img/violin.jpeg',
          ),
          // Add more songs for Mental Health as needed
        ];
      default:
        return [];
    }
  }
}

class DiseaseSong {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  DiseaseSong({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });
}

// class SongDetailsScreen extends StatelessWidget {
//   final DiseaseSong song;

//   SongDetailsScreen({required this.song});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(song.title),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(
//             song.description,
//             style: TextStyle(color: Colors.black),
//           ),
//         ],
//       ),
//     );
//   }
// }

class DiseaseSongCard extends StatelessWidget {
  const DiseaseSongCard({
    Key? key,
    required this.diseaseSong,
  }) : super(key: key);

  final DiseaseSong diseaseSong;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Container(
        height: 85,
        // margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 3,
                offset: Offset(5, 3),
              ),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(22.0),
            //   child: Image.network(
            //     diseaseSong.coverUrl,
            //     height: 80,
            //     width: 80,
            //     fit: BoxFit.cover,
            //   ),
            // ),
            Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  image: DecorationImage(
                      image: AssetImage(
                        diseaseSong.coverUrl,
                      ),
                      fit: BoxFit.cover),
                )),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    diseaseSong.title,
                    style: TextStyle(
                      color: Colors.black54,
                      fontFamily: 'Wellfleet',
                    ),
                    textScaleFactor: 1.1,
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SongDetailsScreen(song: diseaseSong),
                  ),
                );
              },
              icon: Icon(
                Icons.play_circle,
                color: Colors.black45,
              ),
              iconSize: 40,
            ),
          ],
        ),
      ),
    );
  }
}

class SongDetailsScreen extends StatelessWidget {
  final DiseaseSong song;

  SongDetailsScreen({required this.song});

  @override
  Widget build(BuildContext context) {
    AudioPlayer audioPlayer = AudioPlayer();

    audioPlayer.setAudioSource(
      ConcatenatingAudioSource(
        children: [
          AudioSource.uri(
            Uri.parse('asset:///${song.url}'),
          ),
        ],
      ),
    );

    Stream<SeekBarData> seekBarDataStream =
        rxdart.Rx.combineLatest2<Duration, Duration?, SeekBarData>(
      audioPlayer.positionStream,
      audioPlayer.durationStream,
      (
        Duration position,
        Duration? duration,
      ) {
        return SeekBarData(position, duration ?? Duration.zero);
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(song.title),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MusicPlayer(
            seekBarDataStream: seekBarDataStream,
            song: song,
            audioPlayer: audioPlayer,
          ),
        ],
      ),
    );
  }
}
