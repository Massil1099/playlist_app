import 'package:flutter/material.dart';
import 'package:playlist_app/presenter/song_list_presenter.dart';
import 'package:provider/provider.dart';
import '../models/song.dart';


class SongDetailsWidget extends StatelessWidget {
  const SongDetailsWidget ({super.key}) ;
  @override
  Widget build (BuildContext context) {
    final song = ModalRoute.of(context)!.settings.arguments as Song;
    final songListPresenter = context.watch < SongListPresenter >() ;


    return Scaffold(
      appBar :AppBar(
        title :Text(song.title),
    ) ,
    body : Padding(
      padding : const EdgeInsets .all (16.0) ,
      child : Column(
        crossAxisAlignment : CrossAxisAlignment.start ,
        children : [
          TextFormField (
            initialValue : song.title,
            onChanged : (text) {
              songListPresenter.modifyTitle (song,text) ;
            } ,
            decoration: const InputDecoration(labelText: 'Title'),
          ),

          const SizedBox ( height : 16) ,
          TextFormField (
            initialValue : song.artist ,
            onChanged : (text) {
              songListPresenter.modifyArtist (song,text) ;
            } ,
            decoration: const InputDecoration(labelText: 'Artist'),
          ),
          const SizedBox ( height : 16) ,

          TextFormField (
            initialValue : song.album ,
            onChanged : (text) {
              songListPresenter.modifyAlbum (song,text) ;
            } ,
            decoration: const InputDecoration(labelText: 'Album'),
          ),
          const SizedBox ( height : 16) ,

          TextFormField(
            initialValue: song.duration.toString(),
            keyboardType: TextInputType.number,
            onChanged: (text) {
              final seconds = int.tryParse(text) ?? song.duration;
              songListPresenter.modifyDuration(song, seconds);
            },

            decoration: const InputDecoration(labelText: 'Duration'),
          ),
          const SizedBox ( height : 30) ,

          // --- Image de la chanson ---

          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                song.image,
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 24),

        ] ,
      )
    )
    ) ;
  }
}
