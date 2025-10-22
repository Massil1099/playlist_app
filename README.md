# playlist_app

Playlist App:  My first Flutter project.

Ce commit:

## Fonctionnalité : Partage de la Playlist: 
L’application permet maintenant de partager sa playlist personnalisée avec d’autres applications (messagerie, réseaux sociaux, e-mail, etc.).


## Exemple de message partagé:

 My Playlist 

1. Wish You Were Here — Pink Floyd (5:00)
2. Come Together — The Beatles (4:19)
3. Shape Of My Heart — Rolling Stones (4:39)

Total duration: 13:58
Shared via PlaylistApp 



### Fonctionnement technique

- Intégration du partage via `share_plus` :
    - Implémentation de la méthode `buildSelectedSongsText()` dans `SongListPresenterImpl`
    - Utilisation de `SharePlus.instance.share(ShareParams(text: ...))` pour partager la playlist sous forme de texte


### Étapes
1. Sélectionnez plusieurs chansons dans l’écran principal (`SongListWidget`).
2. Appuyez sur le bouton **“Let’s go”**.
3. Vous serez redirigé vers un nouvel écran récapitulatif (`PlaylistSummaryWidget`).

