import 'package:basic_app/pages/Login.dart';
import 'package:basic_app/utills/Constants.dart';
import 'package:flutter/material.dart';
import 'package:basic_app/widgets/Drawer.dart';
import 'dart:convert';
import 'package:http/http.dart' as api;

class ListSL extends StatelessWidget {
  Future getData() async {
    var url = "http://jsonplaceholder.typicode.com/";

    var res = await api.get(url);
    var data = jsonDecode(res.body);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awsome app"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Constants.prefs.setBool(Constants.authKey, false);
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
          )
        ],
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Center(
                  child: Text("fetch something"),
                );
              case ConnectionState.active:
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              case ConnectionState.done:
                if (snapshot.hasError) {
                  return Center(
                    child: Image.network(
                        "https://media.giphy.com/media/8L0Pky6C83SzkzU55a/giphy.gif"),
                  );
                }
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Image.network(snapshot.data[index]["url"]),
                        title: Text(snapshot.data[index]["title"]),
                      ),
                    );
                  },
                  itemCount: snapshot.data.length,
                );
              default:
                return Center(
                  child: Text("fetch something"),
                );
            }
          }),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.refresh),
      ),
    );
  }
}
