import '../repository/song_list_repository.dart';
import '../models/song.dart';

class SongRepositoryDummyImpl implements SongListRepository {
  @override
  List<Song> songs = [
    Song("Wish you were here","Pink Floyd","album1","5:30"),
    Song("Gimme shelter","Rolling stones","album2","4:31"),
    Song("Come together","The Beatles","album3","4:19"),
    Song("Have you ever seen the rain","CCR","album4","2:38"),
    Song("Shape Of My Heart","Rolling stones","album5","4:39")

  ];
}
