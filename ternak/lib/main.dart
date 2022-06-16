import 'package:flutter/material.dart';
//import 'package:hexcolor/hexcolor.dart';
// import './pages/sec_home_page.dart';
import './pages/home_page.dart';
import './pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

HomePage home = new HomePage();
//SecHomePage sechome = new SecHomePage();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Welcome(),
    );
  }
}