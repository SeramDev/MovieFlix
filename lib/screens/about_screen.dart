import 'package:flutter/material.dart';
import 'package:movieflix/model/images.dart';
import 'package:movieflix/style/theme.dart' as Style;
import 'package:movieflix/widgets/navigator.dart';
// import 'package:movieflix/assets/images.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.mainColor,
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text("App Info"),
        centerTitle: true,
        backgroundColor: Style.Colors.mainColor,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  child: Image.asset(Images.logo),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Column(
              children: [
                Container(
                  child: Text(
                    "Movie Flix is the most fastest and easiest app for anyone who’s looking for a quick opinion about a movie. It help you in finding movies, ratings, reviews, recommendations, trailers, actors and much more. Movie flix is for absolute movies and tv series lovers. Movie Flix uses The Movie Database(TMDB) API to retrieve data.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 330.0,
                ),
                Text(
                  "2022 \u00a9 MovieFlix.Inc",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
