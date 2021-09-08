import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("What do you call a pencil with two erasers?"),
              Text("Pointless"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: null,
                    child: Icon(Icons.arrow_left_rounded),
                  ),
                  FloatingActionButton(
                    onPressed: null,
                    child: Icon(Icons.arrow_right_rounded),
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
