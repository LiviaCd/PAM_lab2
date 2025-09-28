import 'package:flutter/material.dart';
import 'package:pam_lab2/sectiontitle.dart';
import 'package:pam_lab2/topbar.dart';

import 'categoryfilterchips.dart';
import 'featuredrecipes.dart';
import 'newrecipeslist.dart';

class RecipeHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopBar(),
              SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search recipe',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF169C89),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.filter_alt, color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              SizedBox(height: 20),
              CategoryFilterChips(),
              SearchBar(),
              SizedBox(height: 24),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FeaturedRecipes(),
                      SizedBox(height: 32),
                      SectionTitle('New Recipes'),
                      SizedBox(height: 16),
                      NewRecipesList(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}