import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:playlist_app/presenter/song_list_presenter.dart';
import 'package:playlist_app/presenter/song_list_presenter_impl.dart';
import 'package:playlist_app/repository/song_list_repository.dart';
import 'package:playlist_app/repository/song_repository_dummy_impl.dart';
import 'package:playlist_app/models/song.dart';
import 'package:playlist_app/ui/song_list_widget.dart';
import 'package:playlist_app/ui/song_widget.dart';
import 'package:playlist_app/ui/song_details_widget.dart';
import 'package:provider/provider.dart';
import 'package:playlist_app/ui/playlist_summary_widget.dart';

void main() {
  GetIt.instance.registerSingleton<SongListRepository>(SongRepositoryDummyImpl());

  runApp (ChangeNotifierProvider <SongListPresenter>(
      create : ( context ) => SongListPresenterImpl () ,
      child : const MyApp () )
  ) ;

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final songListPresenter = context.watch <SongListPresenter>() ;


    return MaterialApp(
      title: 'Creation de la playlist',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute : '/liste',
      routes : {
        '/liste':(context) => const SongListWidget(),
        '/details':(context) => const SongDetailsWidget(),
        "/playlist_summary": (context) => const PlaylistSummaryWidget()
      } ,


    );
  }
}