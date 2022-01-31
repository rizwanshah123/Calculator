import 'package:flutter/material.dart';
import 'home_Page.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        brightness: Brightness.light,
      ),
      home:const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}