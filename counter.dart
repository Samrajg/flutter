import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int c = 0;

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter")),

      body: Column(
        children: [
          Text("$c", style: TextStyle(fontSize: 30)),

          FloatingActionButton(
            onPressed: () => setState(() => c--),
            child: Icon(Icons.remove),
          ),

          FloatingActionButton(
            onPressed: () => setState(() => c++),
            child: Icon(Icons.add),
          ),

          FloatingActionButton(
            onPressed: () => setState(() => c = 0),
            child: Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
