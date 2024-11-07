import 'package:flutter/material.dart';
import 'package:herb_com/verification.dart/login.dart';

class Getstarted extends StatefulWidget {
  const Getstarted({super.key});

  @override
  State<Getstarted> createState() => _GetstartedState();
}

class _GetstartedState extends State<Getstarted> {
  @override
  @override
  void initState() {
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/plshjhfhr.jpg'),
        fit: BoxFit.cover,
      )),
      child: Padding(
          padding: const EdgeInsets.only(
              top: 120,
              right: 22,
              left: 22,
              bottom: 50), // Adds some padding around the content
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // Centers the content vertically
              crossAxisAlignment:
                  CrossAxisAlignment.center, // Centers the content horizontally
              children: [
                Column(
                  children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          'assets/images/wwwwww-removebg-preview.png',
                          height: 80,
                        )),
                  ],
                ),
                SizedBox(
                  height: 40,
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 75, 99, 77)),
                      child: const Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                )
              ])),
    ));
  }
}
