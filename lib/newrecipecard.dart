import 'package:flutter/material.dart';

class NewRecipeCard extends StatelessWidget {
  final String title;
  final String author;
  final int rating;
  final String time;
  final String imagePath;

  const NewRecipeCard({
    required this.title,
    required this.author,
    required this.rating,
    required this.time,
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: List.generate(
                    5,
                        (index) => Icon(
                      Icons.star,
                      size: 16,
                      color: index < rating ? Colors.amber : Colors.grey[300],
                    ),
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 8,
                      backgroundImage: AssetImage('assets/author_${author.toLowerCase()}.jpg'),
                    ),
                    SizedBox(width: 6),
                    Text(
                      'By $author',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 12),
                    Icon(Icons.access_time, size: 14, color: Colors.grey[600]),
                    SizedBox(width: 4),
                    Text(
                      time,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}