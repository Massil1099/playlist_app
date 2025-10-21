class Song {
  String title;
  String artist;
  String album;
  int duration;
  bool isSelected;
  String image;

  Song(
      this.title,
      this.artist,
      this.album,
      this.duration, {
        this.isSelected = false,
        this.image = 'assets/songs_images/LetitbleedRS.jpg', // image par défaut
      });


  String get formattedDuration {
    final minutes = duration ~/ 60;
    final seconds = duration % 60;
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }
}