import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:playlist_app/presenter/song_list_presenter.dart';
import 'package:provider/provider.dart';
import '../repository/song_list_repository.dart';
import 'song_widget.dart';

enum SortOption { title, artist, duration }

class SongListWidget extends StatefulWidget {
  const SongListWidget({super.key});

  @override
  State<SongListWidget> createState() => _SongListWidgetState();
}

class _SongListWidgetState extends State<SongListWidget> {
  final songListRepository = GetIt.instance<SongListRepository>();
  SortOption? _selectedOption; // pour stocker le bouton radio sélectionné

  @override
  Widget build(BuildContext context) {
    final songListPresenter = context.watch<SongListPresenter>();
    final songs = songListPresenter.songs;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Compose your playlist'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Label "Sort by"
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Sort by:',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Row des boutons radios
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Titre
                Row(
                  children: [
                    Radio<SortOption>(
                      value: SortOption.title,
                      groupValue: _selectedOption,
                      onChanged: (SortOption? value) {
                        setState(() => _selectedOption = value);
                        songListPresenter.sortByTitle();
                      },
                    ),
                    const Text('Title'),
                  ],
                ),
                const SizedBox(width: 20),
                // Artiste
                Row(
                  children: [
                    Radio<SortOption>(
                      value: SortOption.artist,
                      groupValue: _selectedOption,
                      onChanged: (SortOption? value) {
                        setState(() => _selectedOption = value);
                        songListPresenter.sortByArtist();
                      },
                    ),
                    const Text('Artist'),
                  ],
                ),
                const SizedBox(width: 20),
                // Durée
                Row(
                  children: [
                    Radio<SortOption>(
                      value: SortOption.duration,
                      groupValue: _selectedOption,
                      onChanged: (SortOption? value) {
                        setState(() => _selectedOption = value);
                        songListPresenter.sortByDuration();
                      },
                    ),
                    const Text('Duration'),
                  ],
                ),
              ],
            ),

            // Label "Songs"
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Songs:',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Liste des chansons
            Expanded(
              child: ListView.builder(
                itemCount: songs.length,
                itemBuilder: (BuildContext context, int index) {
                  final song = songs[index];
                  return SongWidget(song: song);
                },
              ),
            ),

            // Durée totale
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Durée totale: ${songListPresenter.totalFormattedDuration}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),

            // Bouton Let's go
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: songListPresenter.songs.any((song) => song.isSelected)
                      ? () {
                    Navigator.pushNamed(context, '/playlist_summary');
                  }
                      : null,
                  child: const Text("Let's go"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
