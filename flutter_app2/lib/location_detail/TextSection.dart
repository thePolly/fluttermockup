import 'package:flutter/material.dart';

class TitleTextSection extends StatelessWidget {
  final String _title;

  static const double _hPad = 25.0;

  TitleTextSection(this._title);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              padding: const EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4.0),
              child: Center(child: Text(_title, style: Theme
                  .of(context)
                  .textTheme
                  .title))
          )
        ]
    );
  }
}

  class NormalTextSection extends StatelessWidget{
  final String _text;

  NormalTextSection(this._text);

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(10, 32.0, 10, 4.0),
          child: Center( child: Text(_text, style: Theme.of(context).textTheme.bodyText1)),
        )
      ],
    );
  }
  }
