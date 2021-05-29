import 'package:eighthours/pages/home_page.dart';
import 'package:eighthours/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
