import 'package:atunes/models/music.dart';

class MusicOperations {
  MusicOperations._();
  static List<Music> getMusic() {
    return <Music>[
      Music(
          'first Music',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFMXQ9AaiPDppObCoEsKHEtxrupJqlvOARoA&usqp=CAU',
          'This is my first music',
          'https://pagalworld.com.se/siteuploads/files/sfd130/64630/Maan%20Meri%20Jaan(PagalWorld.com.se).mp3'),
      Music(
          'second Music',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFMXQ9AaiPDppObCoEsKHEtxrupJqlvOARoA&usqp=CAU',
          'This is my second music',
          'https://pagalworld.com.se/siteuploads/files/sfd130/64630/Maan%20Meri%20Jaan(PagalWorld.com.se).mp3'),
      Music(
          'third Music',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFMXQ9AaiPDppObCoEsKHEtxrupJqlvOARoA&usqp=CAU',
          'This is my third music',
          'https://pagalworld.com.se/siteuploads/files/sfd130/64630/Maan%20Meri%20Jaan(PagalWorld.com.se).mp3'),
    ];
  }
}
