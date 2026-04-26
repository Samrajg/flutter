import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  void login() {
    if (user.text == "admin" && pass.text == "1234") {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("Success"),
          content: Text("Login Successful"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            )
          ],
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("Failed"),
          content: Text("Login Failed"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            )
          ],
        ),
      );
    }
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),

      body: Column(
        children: [

          TextField(controller: user),

          TextField(controller: pass),

          ElevatedButton(
            onPressed: login,
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
