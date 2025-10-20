class Song {
  String title;
  String artist;
  String album;
  String duration;
  bool isSelected;

  Song(this.title,
      this.artist,
      this.album,
      this.duration,
      {this.isSelected=false});
}