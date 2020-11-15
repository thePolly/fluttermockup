import 'package:flutter/material.dart';
import 'package:flutterapp2/location_detail/widget_to_select.dart';
import 'package:flutterapp2/location_detail/TextSection.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TitleTextSection("The answer is correct!"),
          NormalTextSection("Archimedes proved that a sphere has two thirds of the area and volume of the described cylinder"),
        ClipRRect(
            borderRadius: BorderRadius.circular(1000.0),
            child: Image.asset('assets/images/screen_pic.PNG')

    ),
        MyStatefulWidget()
      ]
    )
    );

    // TODO: implement build
    throw UnimplementedError();
  }
}
