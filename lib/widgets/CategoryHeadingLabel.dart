import 'package:flutter/material.dart';

class CategoryHeadingLabel extends StatelessWidget {
  final String heading;
  const CategoryHeadingLabel({
    super.key, required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Text(
        heading,
        style: const TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}
