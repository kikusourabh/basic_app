import 'package:flutter/material.dart';
import 'package:basic_app/Drawer.dart';
import 'package:http/http.dart' as api;
import 'dart:convert';

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Chane me";
  var apiUrl = "http://jsonplaceholder.typicode.com/photos";
  var data;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await api.get(apiUrl);
    data = json.decode(res.body);
    setState(() {});
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
            child: data != null
                ? ListView.builder(itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Image.network(data[index]["url"]),
                        title: Text(data[index]["title"]),
                      ),
                    );
                  })
                : Center(
                    child: CircularProgressIndicator(),
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
