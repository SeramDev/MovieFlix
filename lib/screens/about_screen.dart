import 'package:flutter/material.dart';
import 'package:movieflix/model/images.dart';
import 'package:movieflix/style/theme.dart' as Style;
import 'package:movieflix/widgets/navigator.dart';

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
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(top: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 210,
                  child: Image.asset(Images.logo, fit: BoxFit.cover),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: Text(
                    "Movie Flix is the most fastest and easiest app for anyone who’s looking for a quick opinion about a movie. It help you in finding movies, ratings, reviews, recommendations, trailers, actors and much more. Movie flix is for absolute movies and tv series lovers. Movie Flix uses The Movie Database(TMDB) API to retrieve data.\n\nWith this Movie & TV Show tracker, you can also find season and movie ratings to make a solid decision on what to watch next. Movie flix gives you flexibility and control to customize your home screen with your own card categories and also get personal movie recommendation based on your taste.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Text(
              "2022 \u00a9 MovieFlix.Inc",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
