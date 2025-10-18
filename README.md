# playlist_app

Playlist App:  My first Flutter project.

Ce commit: 
feat: affichage du SongWidget avec données mockées

- Création du modèle Song (title, artist, album, duration)
- Création du widget SongWidget pour afficher le titre et l’artiste d’une chanson
- Implémentation d’un repository abstrait (SongRepository)
- Ajout d’une implémentation factice SongRepositoryDummyImpl avec 1 chanson de test
- Intégration de GetIt pour l’injection de dépendance du repository
- Modification de main.dart pour afficher un seul SongWidget dans un Scaffold
