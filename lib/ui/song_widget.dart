import 'package:flutter/material.dart';
import '../models/song.dart';

class SongWidget extends StatelessWidget {
  final Song song;

  const SongWidget({super.key, required this.song});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(child: Text(song.title)), // prendra toute la largeur disponible

            const SizedBox(width: 16), // espace horizontal de 16 dp

            Text(song.artist),
            const SizedBox(width: 16),
            // espace horizontal de 16 dp

          ],
        )
    );
  }
}