import 'package:flutter/material.dart';
import '../models/song.dart';

class SongWidget extends StatelessWidget {
  final Song song;
  final Function(bool?)? onChanged;

  const SongWidget({super.key, required this.song, this.onChanged});

  @override
  Widget build(BuildContext context) {
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
            Text(song.duration),
            const SizedBox(width: 16),
            Checkbox(value: song.isSelected, onChanged: onChanged)
          ],
        )
    );
  }
}