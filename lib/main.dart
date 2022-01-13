import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Listview Builder",
      theme: new ThemeData(primarySwatch: Colors.orange),
      home: ListViewbuilder(),
    );
  }
}

class ListViewbuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Builder'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.list),
            title: Text("List Item $index"),
            trailing: Text(
              "GFG",
              style: TextStyle(color: Colors.green, fontSize: 15),
            ),
          );
        },
      ),
    );
  }
}
