import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  TextEditingController product = TextEditingController();
  List<String> items = [];

  void addItem() {
    setState(() {
      items.add(product.text);
      product.clear();
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wishlist")),

      body: Column(
        children: [

          // Input
          TextField(controller: product),

          // Add button
          ElevatedButton(
            onPressed: addItem,
            child: Text("Add"),
          ),

          // List
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text(items[i]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
