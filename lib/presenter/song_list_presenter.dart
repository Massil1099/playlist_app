import 'package:flutter/cupertino.dart';
import 'package:playlist_app/models/song.dart';

abstract class SongListPresenter extends ChangeNotifier {
  abstract List <Song> songs ;

  void modifyTitle ( Song song, String title ) ;
  void modifyArtist ( Song song, String artist ) ;
  void modifyAlbum ( Song song, String album ) ;
  void modifyDuration ( Song song, int duration ) ; // durée = int en secondes
  void toggleSelection ( Song song, bool isSelected ) ;

  String get totalFormattedDuration; // c'est un getter pas une methode

  void sortByTitle();
  void sortByArtist();
  void sortByDuration();
}