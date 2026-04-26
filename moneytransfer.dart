import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int accountA = 2577;
  int accountB = 0;

  TextEditingController amount = TextEditingController();
  String message = "";

  void transfer() {
    int amt = int.tryParse(amount.text) ?? 0;

    if (amt <= 0) {
      setState(() {
        message = "Enter valid amount";
      });
    } else if (amt > accountA) {
      setState(() {
        message = "Insufficient balance in A";
      });
    } else {
      setState(() {
        accountA = accountA - amt;
        accountB = accountB + amt;
        message = "Transferred $amt from A to B";
      });
    }
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wallet Transfer")),

      body: Column(
        children: [

          Text("Account A Balance: $accountA"),
          Text("Account B Balance: $accountB"),

          TextField(controller: amount),

          ElevatedButton(
            onPressed: transfer,
            child: Text("Transfer"),
          ),

          Text(message),
        ],
      ),
    );
  }
}
