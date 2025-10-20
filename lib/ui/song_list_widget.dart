import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../repository/song_repository.dart';
import 'song_widget.dart';

class SongListWidget extends StatefulWidget {
  const SongListWidget({super.key});

  @override
  State <SongListWidget> createState() => _SongListWidgetState();
}

class _SongListWidgetState extends State <SongListWidget> {
  final songRepository = GetIt.instance <SongRepository>() ;

  @override
  Widget build(BuildContext context) {
    final songs = songRepository.songs;
    return Scaffold(
        appBar:AppBar(title : const Text ('List of the songs')) ,
        body:Column (
          children: [
            Expanded(
                child:ListView.builder (
                  itemCount: songs.length,
                  itemBuilder: (BuildContext context, int index){
                    final song = songs[index];
                    return SongWidget(song: song, onChanged:(value) {
                      setState(() {
                        song.isSelected = value ?? false;
                      });
                    });
                  },
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Durée totale: 0:00'), // On ajoutera le calcul après
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

