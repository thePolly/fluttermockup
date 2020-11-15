import 'package:flutter/material.dart';
import 'package:flutterapp2/location_detail/main_screen.dart';

class StartScreen extends StatelessWidget {

  final Color _colorgray = Colors.grey[300];
  final Color _colorteal = Colors.teal[200];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child:Image.asset('assets/images/q5.PNG'),
            height: size.height * 0.1,
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:
            Row(
              children: [
                Container(
                  //     child: TitleTextSection("rfef"),
                  decoration: BoxDecoration(
                    color: _colorgray,
                  ),
                  //padding: EdgeInsets.all(10.0),
                ),
                //  TitleTextSection("dfsgdsfg"),
                getContainer2("Sport", _colorgray),
                getContainer2("Science", _colorteal),
                getContainer2("Art", _colorgray),
                getContainer2("Other", _colorgray),
              ],
            ),

          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Popular\ncategories"),
                Container(width: size.width*0.4),
                Container(
                  child: Image.asset('assets/images/q4.PNG'),
                )
              ]
          ),
          Column(
            children: [
              getContainer("q1.PNG", Text("Chemisty"), "20"),
              getContainer("q2.PNG", Text("Biology"), "9"),
              getContainer("q3.PNG", Text("Physics"), "11"),
            ],
          ),
          getButton(context, size)
        ],

      ),

    );

    // TODO: implement build
    throw UnimplementedError();
  }

Container getContainer2(text, color){
    return           Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      width: 110.0,
      height: 40.0,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
              Radius.circular(10.0)
          )
      ),
      child: Center(child: Text(text)
      ),
    );
}


  Container getContainer(pic, Text text1, text2) {
    return Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        decoration: BoxDecoration(
            border: Border.all(
                color: _colorgray,
                width: 1.0

            ),
            borderRadius: BorderRadius.all(
                Radius.circular(10.0)
            )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/$pic'),
            text1,
            Container(
              width: 90.0,
              height: 90.0,
              decoration: BoxDecoration(

                  color: _colorgray,
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)
                  )
              ),
              child: Center(child: Text('$text2 quizess')),
            )
          ],
        )
    );
  }

  Row getButton(context, size) {

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
    ButtonTheme(
      height: 40,
        minWidth: size.width * 0.8,
        child: RaisedButton(

    shape: RoundedRectangleBorder(
    borderRadius: new BorderRadius.circular(10.0),
    ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        },
    color: _colorteal,
    splashColor: Colors.teal[900],
          textColor: Colors.white,
      child: Text("Lets start"),
    )


)
    ]
    ) ;


    }

}

