import '../repository/song_list_repository.dart';
import '../models/song.dart';

class SongRepositoryDummyImpl implements SongListRepository {
  @override
  List<Song> songs = [
    Song("Wish you were here","Pink Floyd","album1", 300, image:'assets/songs_images/LetitbleedRS.jpg'),
    Song("Gimme shelter","Rolling stones","album2",270, image:'assets/songs_images/LetitbleedRS.jpg'),
    Song("Come together","The Beatles","album3",259, image:'assets/songs_images/LetitbleedRS.jpg'),
    Song("Have you ever seen the rain","CCR","album4",158, image:'assets/songs_images/LetitbleedRS.jpg'),
    Song("Shape Of My Heart","Rolling stones","album5",279, image:'assets/songs_images/LetitbleedRS.jpg')

  ];
}
