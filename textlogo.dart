import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome")),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          // Hospital Name
          Text(
            "City Hospital",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 20),

          // Image
          Image.network(
            "https://cdn-icons-png.flaticon.com/512/2966/2966481.png",
            height: 100,
          ),

          SizedBox(height: 20),

          // Health Quote
          Text(
            "Health is Wealth",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
