import 'package:flutter/material.dart';
import '../models/song.dart';


class SongDetailsWidget extends StatelessWidget {
  const SongDetailsWidget ({super.key}) ;
  @override
  Widget build (BuildContext context) {
    final song = ModalRoute.of(context)!.settings.arguments as Song ;

    return Scaffold(
      appBar :AppBar(
        title :Text(song.title),
    ) ,
    body : Padding(
      padding : const EdgeInsets .all (16.0) ,
      child : Column(
        crossAxisAlignment : CrossAxisAlignment .start ,
        children : [
          TextFormField (
            initialValue : song.title ,
            decoration: const InputDecoration(labelText: 'Titre'),
          ),

          const SizedBox ( height : 16) ,
          TextFormField (
            initialValue : song.artist ,
            decoration: const InputDecoration(labelText: 'Artiste'),
          ),

          TextFormField (
              initialValue : song.album ,
            decoration: const InputDecoration(labelText: 'Album'),
          ),

          TextFormField (
              initialValue : song.duration ,
            decoration: const InputDecoration(labelText: 'Durée'),
          ),

        ] ,
      )
    )
    ) ;
  }
}
