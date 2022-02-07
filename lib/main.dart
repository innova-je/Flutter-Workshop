import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ui/themes/Theme.dart' as Theme;
import 'ui/themes/ThemeSettings.dart' as Settings;
import 'ui/views/MainPageView.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _changeTheme() {
    setState(() {
      Settings.isDarkMode = Settings.isDarkMode ? false : true;
    });
    if (Settings.isDarkMode) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.grey[900],
      ));
    } else {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
      ));
    }
  }

  @override
  void initState() {
    Settings.changeTheme = _changeTheme;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Chat UI',
      debugShowCheckedModeBanner: false,
      theme: Settings.isDarkMode ? Theme.darkTheme : Theme.lightTheme,
      home: MainPageView(),
    );
  }
}
