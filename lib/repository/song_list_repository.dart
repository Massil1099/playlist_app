import '../models/song.dart';

abstract class SongListRepository{
  abstract List<Song> songs;
}