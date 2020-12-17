import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Awsome app",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Awsome app"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.redAccent,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.tealAccent,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.cyanAccent,
            )
          ],
        ),
      )
    );
  }
}
