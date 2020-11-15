// app.dart

import 'package:flutter/material.dart';
import 'package:flutterapp2/style.dart';
import 'location_detail/start_screen.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartScreen(),
      theme:  ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(title: AppBarTextStyle),
        ),
            textTheme: TextTheme(
          title: TitleTextStyle,
        body1: Body1TextStyle,
      ),
          unselectedWidgetColor: Colors.grey
      ),
    );
  }
}