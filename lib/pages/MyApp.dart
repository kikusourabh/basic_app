import 'package:flutter/material.dart';
import 'package:basic_app/ChangeNameCard.dart';
import 'package:basic_app/Drawer.dart';


class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Chane me";
  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Awsome app",
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            title: Text("Awsome app"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Card(
                  child:ChangeNameCard(myText,_nameController)
              ),
            ),
          ),
          drawer: MyDrawer(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              myText = _nameController.text;
              setState(() {});
            },
            child: Icon(Icons.refresh),
          ),
        ));
  }
}