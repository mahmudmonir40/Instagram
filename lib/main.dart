import 'package:flutter/material.dart';
import 'package:instagram/insta_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Instagram',
      theme: ThemeData(
        primaryColor: Colors.black,
        primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(titleLarge: TextStyle(color: Colors.black,fontFamily: 'Bushetch')),
        textTheme: TextTheme(titleLarge: TextStyle(color: Colors.black)),


      ),
      home: insta_home(),
    );
  }
}




