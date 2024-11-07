import 'package:flutter/material.dart';
import 'package:herb_com/verification.dart/login.dart';
import 'package:herb_com/verification.dart/otp.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 211, 211),
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 214, 211, 211),
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 67, 90, 69),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              })),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 133, right: 110),
              child: Image.asset('assets/images/logoo000-removebg-preview.png',
                  height: 150),
            ),
            const SizedBox(
              height: 80,
            ),
            SizedBox(
                height: 65,
                width: 375,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                )),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
                height: 65,
                width: 375,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Phone',
                    prefixIcon: const Icon(
                      Icons.phone_android_outlined,
                      size: 19,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                )),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
                height: 65,
                width: 375,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                )),
            const SizedBox(
              height: 90,
            ),
            SizedBox(
              height: 50,
              width: 320,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 75, 99, 77),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Otp()));
                    print('Signup button pressed');
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
