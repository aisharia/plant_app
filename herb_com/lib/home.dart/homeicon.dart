import 'package:flutter/material.dart';

class Homeicon extends StatefulWidget {
  const Homeicon({super.key});

  @override
  State<Homeicon> createState() => _HomeiconState();
}

class _HomeiconState extends State<Homeicon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 211, 211),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: double.infinity,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17)),
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            height: 200, // Adjust the height as needed
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 75, 99, 77),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // Changes position of shadow
                ),
              ],
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    ''
                  )
                ],
              ),
            ),
          ),
          const Expanded(
            child: Center(
              child: Text('Main Content Here'),
            ),
          ),
        ],
      ),
    );
  }
}
