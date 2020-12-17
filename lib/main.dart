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
        body: Container(
          child: Center(child: Text("Hii flutter")),
        ),
      )
    );
  }
}
