import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieflix/style/theme.dart' as Style;
import 'package:movieflix/widgets/navigator.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool valNotify = true;
  bool valNotify2 = true;

  onChangeFun(bool newValue) {
    setState(() {
      valNotify = newValue;
    });
  }

  onChangeFun2(bool newValue) {
    setState(() {
      valNotify2 = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.mainColor,
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
        backgroundColor: Style.Colors.mainColor,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "General",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Divider(
              height: 20,
              thickness: 1,
              color: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            buildGeneralOption(context, "Change Language"),
            buildNotificationOptions("Notifications", valNotify2, onChangeFun2),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.light_mode_sharp,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Preferences",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Divider(
              height: 20,
              thickness: 1,
              color: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            buildNotificationOptions("Dark Mode", valNotify, onChangeFun),
          ],
        ),
      ),
    );
  }
}

Padding buildNotificationOptions(
    String title, bool value, Function onChangeMethod) {
  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: 8,
      horizontal: 20,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        Transform.scale(
          scale: 0.8,
          child: CupertinoSwitch(
            activeColor: Colors.blue,
            trackColor: Colors.grey,
            value: value,
            onChanged: (bool newValue) {
              onChangeMethod(newValue);
            },
          ),
        )
      ],
    ),
  );
}

GestureDetector buildGeneralOption(BuildContext context, String title) {
  return GestureDetector(
    onTap: (() => {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("English"),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("close"),
                  ),
                ],
              );
            },
          ),
        }),
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ],
      ),
    ),
  );
}
