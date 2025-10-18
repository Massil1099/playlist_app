import '../repository/song_repository.dart';
import '../models/song.dart';

class SongRepositoryDummyImpl implements SongRepository {
  @override
  List<Song> songs = [
    Song("Hello","Adele","album1","3:30"),
    Song("song2","artist2","album2","4:40")

  ];
}
