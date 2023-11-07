class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song(
      {required this.title,
      required this.description,
      required this.url,
      required this.coverUrl});

  static List<Song> songs = [
    Song(
      title: 'Jog',
      description: 'Song',
      url: 'assets/audio/Raag_Jog_Alap.mp4',
      coverUrl: 'assets/img/tanpura.jpg',
    ),
    Song(
      title: 'Malkauns',
      description: 'Malkauns',
      url: 'assets/audio/Raag_Malkauns_Alap.mpeg',
      coverUrl: 'assets/img/sitar1.jpg',
    ),
    Song(
      title: 'Lalit',
      description: 'Jog',
      url: 'assets/audio/Raag_Lalit_Alap.mpeg',
      coverUrl: 'assets/img/tanpura1.jpg',
    ),
    Song(
      title: 'Rageshree',
      description: 'Jog',
      url: 'assets/audio/Raag_Rageshree_Alap.mpeg',
      coverUrl: 'assets/img/sitar3.jpg',
    ),
    Song(
      title: 'Hansdhwani',
      description: 'Jog',
      url: 'assets/audio/Raag_Hansdhwani_Alap.mpeg',
      coverUrl: 'assets/img/flute.jpg',
    ),
  ];
}
