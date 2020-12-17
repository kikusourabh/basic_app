import 'package:basic_app/pages/List.dart';
import 'package:basic_app/pages/ListSL.dart';
import 'package:basic_app/pages/Login.dart';
import 'package:basic_app/utills/Constants.dart';
import 'package:flutter/material.dart';
import 'Login.dart';

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Awsome app",
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: Constants.prefs.getBool(Constants.authKey) == true
            ? ListSL()
            : Login());
  }
}
