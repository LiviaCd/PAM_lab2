import 'package:flutter/material.dart';
import 'package:pam_lab2/recipehomepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RecipeHomePage(),
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
    );
  }
}
