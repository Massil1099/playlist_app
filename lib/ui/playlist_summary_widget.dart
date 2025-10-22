import 'package:flutter/material.dart';
import 'package:playlist_app/presenter/song_list_presenter.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class PlaylistSummaryWidget extends StatelessWidget {
  const PlaylistSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final songListPresenter = context.watch < SongListPresenter >() ;
    final selectedSongs = songListPresenter.songs.where((s) => s.isSelected).toList();

    return Scaffold(
      appBar :AppBar(
        title :const Text("My playlist"),
      ),
      body: Padding(
        padding : const EdgeInsets.all(16.0),
        child : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Selected Songs:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
                child: ListView.builder(
                  itemCount: selectedSongs.length,
                  itemBuilder: (context, index){
                    final song = selectedSongs[index];
                    return ListTile(
                        leading: Image.asset(
                        song.image,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                        ),
                        title: Text(song.title),
                        subtitle: Text(song.artist),
                    );

                  },
                ),
            ),
            const SizedBox(height: 20),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  final textToShare = songListPresenter.buildSelectedSongsText();
                  SharePlus.instance.share(ShareParams(text:textToShare));
                },
                child: const Text("Send to music app"),
              ),
            ),
            Center(
              child: ClipRRect(
                child: Image.asset(
                  'assets/songs_images/note.png',
                  width: 250,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
    ),
    );

  }
}