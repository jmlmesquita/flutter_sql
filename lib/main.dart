import 'package:flutter/material.dart';
import 'package:flutter_sql/pages/login.dart';
import 'package:flutter_sql/dbaccess/database.dart';

void main() {
  DBCreator().initDatabase();
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter SQL",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home:LoginPage(),
    );
  }
}
