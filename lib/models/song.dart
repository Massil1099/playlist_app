class Song {
  String title;
  String artist;
  String album;
  int duration; //duree en secondes
  bool isSelected;

  Song(this.title,
      this.artist,
      this.album,
      this.duration,
      {this.isSelected=false});


  String get formattedDuration {
    final minutes = duration ~/ 60;
    final seconds = duration % 60;
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }
}