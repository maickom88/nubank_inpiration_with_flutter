import 'package:flutter/material.dart';

class CardApp extends StatelessWidget {

  final double top;

  const CardApp({Key key, this.top}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
      ),
    );
  }
}