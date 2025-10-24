import 'package:flutter/material.dart';
import 'package:playlist_app/presenter/song_list_presenter.dart';
import 'package:provider/provider.dart';
import '../models/song.dart';

class SongWidget extends StatelessWidget {
  final Song song;

  const SongWidget({super.key, required this.song});

  @override
  Widget build(BuildContext context) {
    final songListPresenter = context.watch<SongListPresenter>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              song.image,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/details', arguments: song);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    song.title,
                    style: const TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    song.artist,
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 13,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(width: 8),

          Text(
            song.formattedDuration,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.grey,
            ),
          ),

          const SizedBox(width: 8),

          // Checkbox
          Checkbox(
            value: song.isSelected,
            onChanged: (value) {
              songListPresenter.toggleSelection(song, value ?? false);
            },
          ),
        ],
      ),
    );
  }
}
