# playlist_app

Playlist App:  My first Flutter project.

Ce commit:
feat: setup basic song list UI with repository and GetIt injection

- Created Song class to hold song data (title, artist, album, duration, isSelected)
- Implemented SongRepository (abstract + dummy implementation)
- Configured GetIt for repository injection
- Created SongWidget to display each song with a checkbox
- Created SongListWidget to display the list of songs from the repository
- Added UI elements: title, artist, duration, checkbox, and placeholder for total duration