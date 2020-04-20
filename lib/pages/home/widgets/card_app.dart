import 'package:flutter/material.dart';

class CardApp extends StatelessWidget {

  final double top;
  final Widget child;
  const CardApp({Key key, this.top, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        child: child,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
      ),
    );
  }
}