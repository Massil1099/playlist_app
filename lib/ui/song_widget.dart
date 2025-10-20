import 'package:flutter/material.dart';
import 'package:playlist_app/presenter/song_list_presenter.dart';
import 'package:provider/provider.dart';
import '../models/song.dart';

class SongWidget extends StatelessWidget {
  final Song song;

  const SongWidget({super.key, required this.song});

  @override
  Widget build(BuildContext context) {
    final songListPresenter = context.watch <SongListPresenter>() ;

    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(child: GestureDetector(
              onTap:() { Navigator.pushNamed (context,'/details', arguments:song);
            },
            child: Text(
              song.title,
              style: const TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
            ),
            ),
            const SizedBox(width: 16), // espace horizontal de 16 dp

            Text(song.artist),
            const SizedBox(width: 16),
            Text(song.album),
            const SizedBox(width: 16),
            Text(song.formattedDuration), //la duree en format mm:ss
            const SizedBox(width: 16),
            Checkbox(value: song.isSelected, onChanged: (value){
              songListPresenter.toggleSelection(song, value ?? false);
            })
          ],
        )
    );
  }
}