import 'package:get_it/get_it.dart';
import 'package:playlist_app/models/song.dart';
import 'package:playlist_app/presenter/song_list_presenter.dart';
import 'package:playlist_app/repository/song_list_repository.dart';

class SongListPresenterImpl extends SongListPresenter {

  @override
  List<Song> songs = GetIt.instance < SongListRepository >().songs ;

  @override
  void modifyTitle ( Song song , String title ) {
   song.title= title ;
    notifyListeners() ;
  }
  @override
  void modifyArtist ( Song song , String artist ) {
    song.artist = artist ;
    notifyListeners() ;
  }
  @override
  void modifyAlbum ( Song song , String album ) {
    song.album = album ;
    notifyListeners () ;
  }

  @override
  void modifyDuration(Song song, int duration) {
    song.duration= duration ;
    notifyListeners () ;
  }

  @override
  void toggleSelection(Song song, bool isSelected) {
    song.isSelected = isSelected;
    notifyListeners();
  }

  // Calcule la durée totale
  @override
  String get totalFormattedDuration {
    final totalSeconds = songs
        .where((s) => s.isSelected)
        .fold<int>(0, (sum, song) => sum + song.duration);

    final minutes = totalSeconds ~/ 60;
    final seconds = totalSeconds % 60;
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  void sortByTitle(){
    songs.sort((a,b) => a.title.compareTo(b.title));
    notifyListeners();
  }

  @override
  void sortByArtist(){
    songs.sort((a,b) => a.artist.compareTo(b.artist));
    notifyListeners();
  }

  @override
  void sortByDuration(){
    songs.sort((a, b) => a.duration.compareTo(b.duration));
    notifyListeners();
  }


  @override
  String buildSelectedSongsText(){
    final selectedSongs = songs.where((s) => s.isSelected).toList();

    if (selectedSongs.isEmpty){
      return " No song selected.";
    }

    final buffer = StringBuffer();
    buffer.writeln("Ma playlist :\n");

    for (var song in selectedSongs) {
      buffer.writeln(
          "${song.title} - (${song.artist}) • ${song.formattedDuration}");
    }

      final total = totalFormattedDuration;
      buffer.writeln("\nDurée totale : $total");

      return buffer.toString();


  }
}