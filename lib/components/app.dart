import 'package:flutter/material.dart';
import 'package:kaki_repair/ui/login.dart';
import 'package:kaki_repair/ui/mainScreen.dart';

class RunApp extends StatefulWidget {
  @override
  _RunAppState createState() => _RunAppState();
}

class _RunAppState extends State<RunApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kaki Repair",
      home: MainScreen(),
      theme: ThemeData(
       
      ),
      routes: {
        '/login': (BuildContext context) => LoginScreen(),
      },
    );
  }
}
