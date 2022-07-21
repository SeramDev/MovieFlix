import 'package:flutter/material.dart';
import 'package:movieflix/model/images.dart';
import 'package:movieflix/screens/about_screen.dart';
import 'package:movieflix/screens/home_screen.dart';
import 'package:movieflix/screens/settings_screen.dart';
import 'package:movieflix/style/theme.dart' as Style;

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 199, 205, 214),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "MovieFlix",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            decoration: BoxDecoration(
              color: Style.Colors.mainColor,
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Style.Colors.mainColor,
              child: Image.asset(Images.icon),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10.0),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  leading: Icon(
                    Icons.home,
                    color: Style.Colors.mainColor,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  leading: Icon(
                    Icons.settings,
                    color: Style.Colors.mainColor,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SettingsScreen(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    "App Info",
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                  leading: Icon(
                    Icons.info_outline,
                    color: Style.Colors.mainColor,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AboutScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 370.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: Text(
                        "Version v1.1.12",
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
