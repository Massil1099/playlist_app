# playlist_app - Projet de Création de Playlists

Playlist App:  My first Flutter project.

**Approche comparative des technologies mobiles**

---

## 🧭 Présentation du projet
Ce projet a pour objectif de développer une **application mobile Flutter** permettant à l’utilisateur de **composer une playlist personnalisée** à partir d’une liste de chansons préexistantes.

L’application illustre plusieurs concepts fondamentaux :
- La **gestion d’état** avec le pattern MVP (Model–View–Presenter).
- La **navigation entre plusieurs écrans**.
- La **manipulation de listes dynamiques** et d’interfaces interactives.
- L’utilisation de **widgets Flutter personnalisés** et d’assets multimédias (images).
- Le **partage de données** via d’autres applications mobiles.

---

## 🧩 Fonctionnalités principales

### 🖱️ 1. Liste des chansons
L’écran principal affiche :
- Le **titre**, **l’artiste**, **la durée**, et une **image d’album** pour chaque chanson.
- Une **case à cocher** permettant de sélectionner les chansons à inclure dans la playlist.
- Trois boutons radio dans la section **“Sort by”** pour trier les chansons :
    -  Par titre
    -  Par artiste
    -  Par durée
- L’affichage en bas de la **durée totale** de la playlist sélectionnée.
- Un bouton **“Let’s go”** qui devient actif uniquement lorsqu’au moins une chanson est sélectionnée.

---

### 🎧 2. Détails d’une chanson
Lorsqu’un utilisateur appuie sur une chanson (le titre de la chanson) :
- L’application navigue vers un **écran de détails**.
- L’écran affiche :
    - Le **titre**, **l’artiste**, **l’album** et la **durée** dans des champs modifiables.
    - L’**image de l’album** associée à la chanson.
- L’utilisateur peut modifier les informations et revenir à la liste.

---

### 📜 3. Récapitulatif de la playlist
En appuyant sur **“Let’s go”**, l’application affiche :
- La **liste complète des chansons sélectionnées**.
- Une **image d’illustration**.
- Un bouton **“Send to music app”** permettant de partager la playlist.

---

### 🔗 4. Partage de la playlist
Le bouton **“Send to music app”** permet de :
- **Partager la playlist sous forme de texte** (titres et artistes) via n’importe quelle application capable de recevoir du texte (ex. : SMS, email, messagerie, réseau social).
- L’implémentation s’appuie sur le package **`share_plus`**, permettant un partage multiplateforme (Android & iOS).

---

## 🏗️ Architecture du projet

Le projet suit une structure **MVP (Model–View–Presenter)** claire et modulaire :

lib/
├── main.dart
│
├── models/
│ └── song.dart # Classe Song : structure de données des chansons
│
├── presenter/
│ ├── song_list_presenter.dart # Interface du Presenter (logique métier)
│ └── song_list_presenter_impl.dart # Implémentation : tri, sélection, calcul de durée totale
│
├── repository/
│ ├── song_list_repository.dart # Interface du Repository (source de données)
│ └── song_list_repository_dummy_impl.dart # Données factices (dummy)
│
└── ui/
├── song_list_widget.dart # Écran principal (liste + tri + bouton "Let's go")
├── song_details_widget.dart # Écran de détails d’une chanson
├── playlist_summary_widget.dart # Écran récapitulatif et partage
└── song_widget.dart # Widget individuel pour l’affichage d’un morceau



##  Technologies utilisées

| Composant | Description |
|------------|--------------|
| **Flutter** | Framework principal pour le développement multiplateforme |
| **Dart** | Langage de programmation |
| **Provider** | Gestion d’état réactif |
| **GetIt** | Injection de dépendances |
| **Share Plus** | Partage de texte entre applications |
| **Material Design** | Design system utilisé pour l’UI |

## 🚀 Lancer le projet

### 1️⃣ Cloner le dépôt
```bash
- git clone https://github.com/<Massil1099>/<playlist_app>.git
- cd playlist_app
- flutter pub get
- flutter run



---

## 👤 Auteur

**Nom :** *Massil Ait challal *  
**Université de Rouen Normandie**  
**Master 1 – Data Science Parcours SIME*  
**Enseignant :** *Mathieu Blossier*
