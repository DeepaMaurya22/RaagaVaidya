class Playlist {
  final String title;
  final String url;
  final String imageUrl;

  Playlist({
    required this.title,
    required this.url,
    required this.imageUrl,
  });

  static List<Playlist> playlist = [
    Playlist(
      title: 'BasantMukhari',
      url: 'assets/audio/Raag_BasantMukhari_Alap.mpeg',
      imageUrl: 'assets/img/sarangi.jpg',
    ),
    Playlist(
      title: 'Des',
      url: 'assets/audio/Raag_Des_Alap.mpeg',
      imageUrl: 'assets/img/sitar.jpeg',
    ),
    Playlist(
      title: 'Hansdhwani',
      url: 'assets/audio/Raag_Hansdhwani_Alap.mpeg',
      imageUrl: 'assets/img/flute.jpg',
    ),
    Playlist(
      title: 'Lalit',
      url: 'assets/audio/Raag_Lalit_Alap.mpeg',
      imageUrl: 'assets/img/tanpura1.jpg',
    ),
    Playlist(
      title: 'Malkauns',
      url: 'assets/audio/Raag_Malkauns_Alap.mpeg',
      imageUrl: 'assets/img/sitar1.jpg',
    ),
    Playlist(
      title: 'Marwa',
      url: 'assets/audio/Raag_Marawa_Alap.mpeg',
      imageUrl: 'assets/img/surbahar.jpg',
    ),
    Playlist(
      title: 'MiyakiTodi',
      url: 'assets/audio/Raag_MiyakiTodi_Alap.mpeg',
      imageUrl: 'assets/img/sitar2.jpeg',
    ),
    Playlist(
      title: 'Rageshree',
      url: 'assets/audio/Raag_Rageshree_Alap.mpeg',
      imageUrl: 'assets/img/sitar3.jpg',
    ),
    Playlist(
      title: 'Jog',
      url: 'assets/audio/Raag_Jog_Alap.mp4',
      imageUrl: 'assets/img/tanpura.jpg',
    ),
    Playlist(
      title: 'Shree',
      url: 'assets/audio/Raag_Shree_Alap.mpeg',
      imageUrl: 'assets/img/piano.jpg',
    ),
    Playlist(
      title: 'TilakKamod',
      url: 'assets/audio/Raag_TilakKamod_Alap.mpeg',
      imageUrl: 'assets/img/sitar4.jpg',
    ),
    Playlist(
      title: 'Yaman',
      url: 'assets/audio/Raag_Yaman_Alap.mpeg',
      imageUrl: 'assets/img/violin.jpeg',
    ),
  ];
}
