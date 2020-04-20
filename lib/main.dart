import 'package:flutter/material.dart';
import 'package:nubank_app/pages/home/home_page.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark
    ),
  );
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nubank Design Inspiration',
        theme: ThemeData(
            primarySwatch: Colors.purple, brightness: Brightness.dark),
        home: HomePage());
  }
}
