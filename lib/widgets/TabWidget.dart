import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  final String label;
  const TabWidget({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        label,
        style: TextStyle(color: Colors.grey.shade600),
      ),
    );
  }
}