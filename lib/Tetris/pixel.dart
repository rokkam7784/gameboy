import 'package:flutter/material.dart';

class Pixel extends StatelessWidget {
  final color;
  // final child; // displays index num

  Pixel({
    // this.child,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
