import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String text;
  SectionTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: Colors.black87,
      ),
    );
  }
}