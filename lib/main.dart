import 'package:flutter/material.dart';
import 'package:mewnu/views/pages_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mewnu',
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Red_Hat_Display',
        hintColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        indicatorColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        // primarySwatch: Colors.grey,
      ),
      home: PagesController(),
    );
  }
}
