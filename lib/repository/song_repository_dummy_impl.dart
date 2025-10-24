import '../repository/song_list_repository.dart';
import '../models/song.dart';

class SongRepositoryDummyImpl implements SongListRepository {
  @override
  List<Song> songs = [
    Song("Wish you were here","Pink Floyd","Wish you were here", 300, image:'assets/songs_images/WishYouWereHere.jfif'),
    Song("Gimme shelter","Rolling stones","Let it Bleed",270, image:'assets/songs_images/LetitbleedRS.jpg'),
    Song("Come together","The Beatles","Abbey Road",259, image:'assets/songs_images/ComeTogether.jpg'),
    Song("Have you ever seen the rain","CCR","Pendulum",158, image:'assets/songs_images/HaveYouEverSeenTheRain.jfif'),
    Song("Shape Of My Heart","Sting","Ten Summoner's Tales",279, image:'assets/songs_images/ShapeOfMyHeart.jpg'),
    Song("Cornflake Girl","Tori Amos","Under the Pink",305, image:'assets/songs_images/CornflakeGirl.jpg'),
    Song("Master Blaster","Stevie Wonder","Hotter than July",289, image:'assets/songs_images/MasterBlaster.jpeg'),
    Song("So Sorry","Feist","The Reminder",192, image:'assets/songs_images/SoSorry.jpg'),
    Song("Billie Jean","Michael Jackson","Thriller",296, image:'assets/songs_images/BillieJean.jfif'),
    Song("Pierrot","Renaud","Ma gonzesse",173, image:'assets/songs_images/Pierrot.jfif')


  ];
}
