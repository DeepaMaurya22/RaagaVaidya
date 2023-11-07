import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'song_model.dart';

class SongCard extends StatelessWidget {
  const SongCard({
    super.key,
    required this.song,
  });

  final Song song;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/song', arguments: song);
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.23,
            width: MediaQuery.of(context).size.width * 0.75,
            margin: EdgeInsets.only(right: 10, left: 10),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4), // Shadow color
                  spreadRadius: 3, // Negative value for inner shadow
                  blurRadius: 4, // Blur radius
                  offset: Offset(-7, -2), // No offset for inner shadow
                ),
              ],
              borderRadius: BorderRadius.circular(22),
              image: DecorationImage(
                  image: AssetImage(
                    song.coverUrl,
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
              height: 35,
              width: MediaQuery.of(context).size.width * 0.30,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white.withOpacity(0.8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        song.title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Wellfleet',
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.play_circle,
                    color: Colors.black,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
