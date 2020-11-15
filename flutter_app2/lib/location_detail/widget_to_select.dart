import 'package:flutter/material.dart';

enum SingingCharacter { albert, isaac, archimedes, max }

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  SingingCharacter _character = SingingCharacter.albert;
  Color background = Colors.white;


  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(30, 4.0, 30, 4.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green,
                    width: 2.0
                  
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0)
                  )
                ),
                  child: ListTile(
                      title: const Text('Albert Einstein'),
                      leading: Radio(
                        activeColor:
                        Color.alphaBlend(Colors.deepOrange, Colors.white),
                        value: SingingCharacter.albert,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ))),
    )

        ),
        Container(
          padding: const EdgeInsets.fromLTRB(30, 4.0, 30, 4.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: ListTile(
                  title: const Text('Isaac Newton'),
                  leading: Radio(
                    activeColor:
                        Color.alphaBlend(Colors.deepOrange, Colors.white),
                    value: SingingCharacter.isaac,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ))),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(30, 4.0, 30, 4.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: ListTile(
                  title: const Text('Archimedes'),
                  leading: Radio(
                    activeColor:
                        Color.alphaBlend(Colors.deepOrange, Colors.white),
                    value: SingingCharacter.archimedes,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ))),
        ),
        Container(
            padding: const EdgeInsets.fromLTRB(30, 4.0, 30, 4.0),

            child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: ListTile(
                  title: const Text('Max Born'),
                  tileColor: background,
                  leading: Radio(
                    activeColor:
                        Color.alphaBlend(Colors.deepOrange, Colors.white),
                    value: SingingCharacter.max,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        this.
                        _character = value;
                        background = Colors.orange;
                      });
                    },
                  ),
                ))),
      ],
    );
  }
}
