import 'package:flutter/material.dart';
import 'package:herb_com/allcategories.dart/air.dart';
import 'package:herb_com/plantctgrss.dart/edible.dart';
import 'package:herb_com/plantctgrss.dart/indooor.dart';
import 'package:herb_com/plantctgrss.dart/low.dart';
import 'package:herb_com/plantctgrss.dart/medicinal.dart';
import 'package:herb_com/plantctgrss.dart/outdoor.dart';
import 'package:herb_com/plantctgrss.dart/seasonal.dart';

class Plantcategories extends StatelessWidget {
  const Plantcategories({super.key});

  final List<Category> categories = const [
    Category(Icons.nature, 'Indoor Plants', Indooor()),
    Category(Icons.emoji_nature, 'Outdoor Plants', Outdoor()),
    Category(Icons.filter_vintage, 'Air-Purifying Plants', Air()),
    Category(Icons.health_and_safety, 'Medicinal Plants', Medicinal()),
    Category(Icons.spa, 'Edible Plants', Edible()),
    Category(Icons.eco, 'Low Maintenance Plants', Low()),
    Category(Icons.ac_unit, 'Seasonal Plants', Seasonal()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 211, 211),
      appBar: AppBar(
        title: const Text('Plant Categories'),
        backgroundColor: const Color.fromARGB(255, 211, 208, 208),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 13, right: 13, top: 40),
        child: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryItem(
              icon: categories[index].icon,
              title: categories[index].title,
              page: categories[index].page,
            );
          },
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget page;

  const CategoryItem(
      {super.key, required this.icon, required this.title, required this.page});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 11),
        width: 390,
        height: 90,
        decoration: BoxDecoration(
          color: const Color.fromARGB(174, 29, 43, 30),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white, size: 30),
              const SizedBox(height: 5),
              Text(title, style: const TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}

class Category {
  final IconData icon;
  final String title;
  final Widget page;

  const Category(this.icon, this.title, this.page);
}
