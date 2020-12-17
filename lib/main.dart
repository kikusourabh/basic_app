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
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.teal,
              gradient: LinearGradient(colors: [
                Colors.red,
                Colors.redAccent
              ]),
              borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    offset: Offset(3,5)
                  )
                ]
            ),
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            width: 100,
            height: 100,
            child: Text("I'm a \nBox",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
          ),
        ),
      )
    );
  }
}
