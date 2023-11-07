import 'package:flutter/material.dart';
import 'package:raagavaidya/playlist_model.dart';
import 'custom_navbar.dart';
import 'drawer.dart';
import 'playlist_card.dart';
import 'song_card.dart';
import 'song_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Song> songs = Song.songs;
    List<Playlist> playlist = Playlist.playlist;

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            // Color.fromARGB(255, 102, 7, 119).withOpacity(0.8),
            // Colors.purple.shade200.withOpacity(0.8),
            Colors.blue.shade700.withOpacity(0.8),
            Colors.blue.shade200.withOpacity(0.8),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: Navbar(),
        appBar: _CustomAppBar(),
        bottomNavigationBar: CustomNavBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Search Bar
              _DiscoverMusic(),

              // Slider
              SliderView(songs: songs),

              // Text
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Divider(height: 1, color: Colors.black38),
                    SizedBox(height: 5),
                    Text(
                      'Indian Classical Music',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Graduate',
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 5),
                    Divider(height: 1, color: Colors.white),

                    SizedBox(height: 5),

                    // List of Items
                    Container(
                      height: MediaQuery.of(context).size.height * 0.38,
                      child: ListView.builder(
                        itemCount: playlist.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return PlaylistCard(playlist: playlist[index]);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SliderView extends StatelessWidget {
  const SliderView({
    super.key,
    required this.songs,
  });

  final List<Song> songs;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.25,
              child: PageView.builder(
                controller: PageController(viewportFraction: 0.8),
                itemCount: songs.length,
                itemBuilder: (_, index) {
                  return SongCard(
                    song: songs[index],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

// ListView
// SizedBox(
//     height: MediaQuery.of(context).size.height * 0.27,
//     child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: songs.length,
//         itemBuilder: (context, index) {
//           return Container(
//             width: MediaQuery.of(context).size.width * 0.40,
//             decoration: BoxDecoration(
//   image: DecorationImage(
//       image: AssetImage(
//         songs[index].coverUrl,
//       ),
//       fit: BoxFit.cover),
// ),
//           );
//         }))

class _DiscoverMusic extends StatelessWidget {
  const _DiscoverMusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'RaagaVaidya',
          style: TextStyle(
            fontSize: 35,
            fontFamily: 'GreatVibes',
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),

        //Search Bar
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black38.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ],
          ),

          // Text and Hint
          child: TextFormField(
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              hintText: 'Search',
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.grey),
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide.none),
            ),
            style: TextStyle(color: Colors.black54),
          ),
        )
      ]),
    );
  }
}

// class _CustomNavBar extends StatelessWidget {
//   const _CustomNavBar({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//         backgroundColor: Colors.white,
//         unselectedItemColor: Colors.black,
//         selectedItemColor: Colors.black,
//         // showUnselectedLabels: false,
//         // showSelectedLabels: false,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite_outline),
//             label: 'Favorites',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.people),
//             label: 'Profile',
//           )
//         ]);
//   }
// }

class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leadingWidth: 50, // Set the leading width to zero to remove the gap.
      titleSpacing: 0, // Set titleSpacing to zero to remove additional spacing.

      // leading: const Icon(Icons.grid_view_rounded),
      title: Text(
        'Dashboard',
        textAlign: TextAlign.end,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
