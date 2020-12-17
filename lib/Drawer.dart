import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.tealAccent),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1499714608240-22fc6ad53fb2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"),
                ),
                accountName: Text(
                  "karmakar sourov",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text(
                  "karmakarsourabh7@gmail.com",
                  style: TextStyle(color: Colors.teal),
                ),
              )),
          ListTile(
            isThreeLine: true,
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("user account"),
          )
        ],
      ),
    );
  }
}
