import 'package:flutter/material.dart';

import 'newrecipecard.dart';

class NewRecipesList extends StatelessWidget {
  final List<Map<String, dynamic>> recipes = [
    {
      'title': 'Steak with tomato...',
      'author': 'James Milner',
      'rating': 5,
      'time': '20 mins',
      'imagePath': 'assets/steak.jpg',
    },
    {
      'title': 'Pilaf sweet...',
      'author': 'Laura',
      'rating': 5,
      'time': '25 mins',
      'imagePath': 'assets/pilaf.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: recipes.map((recipe) {
        return NewRecipeCard(
          title: recipe['title'],
          author: recipe['author'],
          rating: recipe['rating'],
          time: recipe['time'],
          imagePath: recipe['imagePath'],
        );
      }).toList(),
    );
  }
}