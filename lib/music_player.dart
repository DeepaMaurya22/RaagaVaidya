import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'disease.dart';
import 'seekbar.dart';

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({
    Key? key,
    required this.seekBarDataStream,
    required this.song,
    required this.audioPlayer,
  }) : super(key: key);

  final Stream<SeekBarData> seekBarDataStream;
  final DiseaseSong song;
  final AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Display Cover Image
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(12),
          //   child: Image.network(
          //     song.coverUrl,
          //     height: MediaQuery.of(context).size.height * 0.5,
          //     width: MediaQuery.of(context).size.width * 0.7,
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                image: DecorationImage(
                    image: AssetImage(
                      song.coverUrl,
                    ),
                    fit: BoxFit.cover),
              )),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          // Display Song Title and Description
          Text(
            song.title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: 8),
          // Text(
          //   song.description,
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontSize: 14,
          //   ),
          // ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          // Display Seek Bar
          StreamBuilder<SeekBarData>(
            stream: seekBarDataStream,
            builder: (context, snapshot) {
              final positionData = snapshot.data;
              return SeekBar(
                position: positionData?.position ?? Duration.zero,
                duration: positionData?.duration ?? Duration.zero,
                onChangedEnd: audioPlayer.seek,
              );
            },
          ),
          SizedBox(height: 16),
          // Add Play/Pause Buttons
          playbutton(audioPlayer: audioPlayer),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     IconButton(
          //       onPressed: () => audioPlayer.play(),
          //       iconSize: 40,
          //       icon: Icon(
          //         Icons.play_arrow,
          //         color: Colors.white,
          //       ),
          //     ),
          //     SizedBox(width: 20),
          //     IconButton(
          //       onPressed: () => audioPlayer.pause(),
          //       iconSize: 40,
          //       icon: Icon(
          //         Icons.pause,
          //         color: Colors.white,
          //       ),
          //     ),
          //   ],
          // ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          // Additional Buttons or Controls
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                iconSize: 35,
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                iconSize: 35,
                icon: Icon(
                  Icons.cloud_download,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class playbutton extends StatelessWidget {
//   const playbutton({
//     super.key,
//     required this.audioPlayer,
//   });

//   final AudioPlayer audioPlayer;

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {
//         if (audioPlayer.playing) {
//           audioPlayer.pause();
//         } else {
//           audioPlayer.play();
//         }
//       },
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Colors.black,
//       ),
//       child: Icon(
//         audioPlayer.playing
//             ? Icons.pause_circle
//             : Icons.play_circle_fill_outlined,
//         color: Colors.white,
//         size: MediaQuery.of(context).size.width * 0.2,
//       ),
//     );
//   }
// }

class playbutton extends StatefulWidget {
  const playbutton({
    Key? key,
    required this.audioPlayer,
  }) : super(key: key);

  final AudioPlayer audioPlayer;

  @override
  _playButtonState createState() => _playButtonState();
}

class _playButtonState extends State<playbutton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (widget.audioPlayer.playing) {
          widget.audioPlayer.pause();
        } else {
          widget.audioPlayer.play();
        }
        setState(() {});
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
      ),
      child: Icon(
        widget.audioPlayer.playing
            ? Icons.pause_circle
            : Icons.play_circle_fill_outlined,
        color: Colors.white,
        size: MediaQuery.of(context).size.width * 0.2,
      ),
    );
  }
}
