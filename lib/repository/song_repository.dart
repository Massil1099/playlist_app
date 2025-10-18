import '../models/song.dart';

abstract class SongRepository{
  abstract List<Song> songs;
}