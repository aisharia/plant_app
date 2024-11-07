import 'package:flutter/material.dart';
import 'package:herb_com/allcategories.dart/additional.dart';
import 'package:herb_com/allcategories.dart/caretools.dart';
import 'package:herb_com/allcategories.dart/gardening.dart';
import 'package:herb_com/allcategories.dart/plantcategories.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 211, 211),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 16.0, // Increased spacing between columns
          mainAxisSpacing: 16.0, // Increased spacing between rows
          childAspectRatio: 0.7400, // Adjust this to change the aspect ratio
          children: <Widget>[
            GestureDetector(
              onTap: () {
                // Navigate to Plant Categories screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Plantcategories()),
                );
              },
              child: buildCategoryCard(
                  'assets/images/plantimage.jpeg', 'Plant Categories'),
            ),
            GestureDetector(
              onTap: () {
                // Navigate to Plant Care Tools screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Caretools()),
                );
              },
              child: buildCategoryCard(
                  'assets/images/plntcare.jpeg', 'Plant Care Tools'),
            ),
            GestureDetector(
              onTap: () {
                // Navigate to Gardening Accessories screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gardening()),
                );
              },
              child: buildCategoryCard(
                  'assets/images/grdng.jpeg', 'Gardening Accessories'),
            ),
            GestureDetector(
              onTap: () {
                // Navigate to Additional Categories screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Additional()),
                );
              },
              child: buildCategoryCard(
                  'assets/images/tips.jpeg', 'Additional Categories'),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build each category card
  Widget buildCategoryCard(String imagePath, String title) {
    return Stack(
      children: <Widget>[
        // Image
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.9),
          ),
          elevation: 4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              imagePath,
              width: double.infinity,
              height: 200, // Increased height for the image
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Semi-transparent overlay
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Container(
            color: const Color.fromARGB(174, 29, 43, 30),
            height: 209, // Match the height of the image
            width: double.infinity, // Match the width of the image
            alignment: Alignment.center, // Center the text in the overlay
          ),
        ),
        // Title Text
        Positioned.fill(
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: const Color.fromARGB(255, 232, 231, 231), // Text color
                fontWeight: FontWeight.bold,
                fontSize: 17, // Increased font size for better visibility
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
