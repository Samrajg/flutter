import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController dept = TextEditingController();

  List<Map> employees = [];

  void addEmployee() {
    setState(() {
      employees.add({
        "name": name.text,
        "email": email.text,
        "dept": dept.text,
      });

      name.clear();
      email.clear();
      dept.clear();
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text("Employee App")),

      body: Column(
        children: [

          // Form
          TextField(controller: name),
          TextField(controller: email),
          TextField(controller: dept),

          ElevatedButton(
            onPressed: addEmployee,
            child: Text("Add"),
          ),

          // Display data
          Expanded(
            child: ListView.builder(
              itemCount: employees.length,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text(employees[i]["name"]),
                  subtitle: Text(
                    employees[i]["email"] +
                    " - " +
                    employees[i]["dept"]
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
