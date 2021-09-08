import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State {
  var jokes = [
    {"question": "What does a baby computer call its father?", "answer": "Data"},
    {"question": "What's a pencil with two erasers called?", "answer": "Pointless"},
    {"question": "Why is the calendar always scared?", "answer": "Because it's days are numbered"},
    {"question": "What do you call a fish with no eye", "answer": "Fsh"},
  ];

  var jokeIndex = 0;

  changeJokeIndex(String direction) {
    if (direction == "prev") {
      setState(() {
        jokeIndex = (jokeIndex + 1) % jokes.length;
      });
    } else if (direction == "next") {
      setState(() {
        jokeIndex = (jokeIndex - 1) % jokes.length;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(25),
                child: Text(
                  jokes[jokeIndex]["question"] as String,
                  style: TextStyle(
                    fontSize: 27.5,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 5, 15, 45),
                child: Text(
                  jokes[jokeIndex]["answer"] as String,
                  style: TextStyle(
                    fontSize: 22.5,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin:EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: FloatingActionButton(
                      onPressed: (){
                        changeJokeIndex("next");
                        print("called");
                      },
                      child: Icon(
                        Icons.arrow_left_rounded,
                        size: 60,
                      ),
                      backgroundColor: Colors.orange,
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: FloatingActionButton(
                      onPressed: (){
                        changeJokeIndex("prev");
                        print("called");
                      },
                      child: Icon(
                        Icons.arrow_right_rounded,
                        size: 60,
                      ),
                      backgroundColor: Colors.orange,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
