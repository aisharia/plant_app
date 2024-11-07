import 'package:flutter/material.dart';
import 'package:herb_com/allcategories.dart/categories.dart';
import 'package:herb_com/home.dart/cart.dart';
import 'package:herb_com/home.dart/favourite.dart';
import 'package:herb_com/home.dart/homeicon.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _currentIndex = 0;

  final List<Widget> pages = [
    Homeicon(),
    Categories(),
    Favourite(),
    Cart(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 211, 211),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 214, 211, 211),
        title: Row(
          children: <Widget>[
            Image.asset(
              'assets/images/plnnnnn-removebg-preview.png',
              height: 20,
              width: 40,
            ),
            Image.asset(
              'assets/images/wwwwww-removebg-preview.png',
              height: 90,
              width: 100,
            ),
            SizedBox(
              width: 203,
            ),
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: const Color.fromARGB(255, 75, 99, 77),
                size: 20,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Column(
        // Wrap the body in a Column
        children: [
          Expanded(
            child: pages[_currentIndex],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 211, 208, 208),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        selectedItemColor: Color.fromARGB(255, 67, 82, 68),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}
