import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:playlist_app/presenter/song_list_presenter.dart';
import 'package:provider/provider.dart';
import '../repository/song_list_repository.dart';
import 'song_widget.dart';

class SongListWidget extends StatefulWidget {
  const SongListWidget({super.key});

  @override
  State <SongListWidget> createState() => _SongListWidgetState();
}

class _SongListWidgetState extends State <SongListWidget> {
  final songListRepository = GetIt.instance <SongListRepository>() ;

  @override
  Widget build(BuildContext context) {
    final songListPresenter = context .watch<SongListPresenter>() ;
    final songs = songListPresenter.songs;

    return Scaffold(
        appBar:AppBar(title : const Text ('Compose your playlist')) ,
        body:Column (
          children: [
            Expanded(
                child:ListView.builder (
                  itemCount: songs.length,
                  itemBuilder: (BuildContext context, int index){
                    final song = songs[index];
                    return SongWidget(song: song);
                  },
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Durée totale: ${songListPresenter.totalFormattedDuration}'),
            ),

            ElevatedButton (
              onPressed: null,
              child: const Text("Let's go"),
            ),
          ],

        )
    ) ;
  }


}

