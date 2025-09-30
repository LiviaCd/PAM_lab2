import 'package:flutter/material.dart';

import 'newrecipecard.dart';

class NewRecipesList extends StatelessWidget {
  final List<Map<String, dynamic>> recipes = [
    {
      'title': 'Steak with tomato...',
      'author': 'James Milner',
      'rating': 5,
      'time': '20 mins',
      'imagePath': 'assets/images/steak.png',
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
    return SizedBox(
      height: 110, // Proper height for the cards
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return NewRecipeCard(
            title: recipe['title'],
            author: recipe['author'],
            rating: recipe['rating'],
            time: recipe['time'],
            imagePath: recipe['imagePath'],
          );
        },
      ),
    );
  }
}