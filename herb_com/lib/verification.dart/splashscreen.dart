import 'package:flutter/material.dart';
import 'package:herb_com/verification.dart/getstarted.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splash_screen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Getstarted()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 214, 211, 211),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 214, 211, 211),
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('assets/images/logo-removebg-preview (1).pngr'),
          const SizedBox(
              height: 90), // You can adjust the height as per your requirement
        ])));
  }
}
