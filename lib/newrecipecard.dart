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
      width: 280, // Fixed width for horizontal scrolling
      height: 200,
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Recipe details - moved to left side
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8),
                // Star rating
                Row(
                  children: List.generate(
                    5,
                        (index) => Icon(
                      Icons.star,
                      size: 18,
                      color: index < rating ? Colors.amber : Colors.grey[300],
                    ),
                  ),
                ),
                SizedBox(height: 8),
                // Author and time info
                Row(
                  children: [
                    // Author avatar with actual image
                    ClipOval(
                      child: Image.asset(
                        'assets/author_avatar.jpg', // You can use different avatars
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFE6E6FA),
                            ),
                            child: Icon(
                              Icons.person,
                              size: 14,
                              color: Colors.grey[600],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'By $author',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(width: 16),
                    Icon(
                      Icons.access_time,
                      size: 16,
                      color: Colors.grey[600],
                    ),
                    SizedBox(width: 4),
                    Text(
                      time,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 16),
          // Circular food image - moved to right side
          Transform.translate(
            offset: Offset(0, -55), // 👈 adjust X, Y translation here
            child: Container(
              width: 105,
              height: 94,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
