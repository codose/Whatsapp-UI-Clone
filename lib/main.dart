import 'package:flutter/material.dart';

import 'screens/MainScreen.dart';

void main() {
  runApp(MyApp());
}

const accent = Color(0x007AFF);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue, accentColor: accent),
      home: MainScreen(),
    );
  }
}
