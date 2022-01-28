import 'package:flutter/material.dart';

import 'home_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_Page(),
      routes: {
        Home_Page.id: (context) => Home_Page(),
      },
    );
  }
}
