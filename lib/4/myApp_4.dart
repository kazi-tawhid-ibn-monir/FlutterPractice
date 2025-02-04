import 'package:flutter/material.dart';

import 'Home_4.dart';

class myApp_4 extends StatelessWidget {
  const myApp_4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              titleTextStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              color: Colors.deepPurple,
              centerTitle: true),
          scaffoldBackgroundColor: Colors.blueGrey,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  foregroundColor: Colors.white60,
                  textStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold)))),
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}
