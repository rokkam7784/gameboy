import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final child;
  Button({this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.black,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
