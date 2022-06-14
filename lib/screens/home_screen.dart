import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:movieflix/style/theme.dart' as Style;
import 'package:movieflix/widgets/best_movies.dart';
import 'package:movieflix/widgets/genres.dart';
import 'package:movieflix/widgets/navigator.dart';
import 'package:movieflix/widgets/now_playing.dart';
import 'package:movieflix/widgets/persons.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.mainColor,
      appBar: AppBar(
        backgroundColor: Style.Colors.mainColor,
        centerTitle: true,
        title: Text("MovieFlix"),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                EvaIcons.searchOutline,
                color: Colors.white,
              ))
        ],
      ),
      body: ListView(
        children: <Widget>[
          NowPlaying(),
          GenresScreen(),
          PersonsList(),
          BestMovies(),
        ],
      ),
      drawer: NavigationDrawer(),
    );
  }
}
