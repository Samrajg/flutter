import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
      Fluttertoast.showToast(
        msg: "Login Successful",
      );
    } else {
      Fluttertoast.showToast(
        msg: "Login Failed",
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
