import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieflix/model/images.dart';
import 'package:movieflix/screens/home_screen.dart';
import 'package:movieflix/style/theme.dart' as Style;
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5)).then((value) {
      Navigator.of(context).pushReplacement(
          CupertinoPageRoute(builder: (context) => HomeScreen()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Style.Colors.mainColor,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(Images.logo),
              width: 300,
            ),
            SizedBox(
              height: 50,
            ),
            SpinKitFadingCircle(
              color: Colors.white,
              size: 45.0,
            ),
          ],
        ),
      ),
    );
  }
}
