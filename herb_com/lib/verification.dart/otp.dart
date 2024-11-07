import 'package:flutter/material.dart';
import 'package:herb_com/home.dart/homescreen.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 211, 211),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 214, 211, 211),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,
              color: Color.fromARGB(255, 67, 90, 69)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 133, right: 110),
              child: Image.asset('assets/images/logoo000-removebg-preview.png',
                  height: 150),
            ),
            const SizedBox(height: 90),
            SizedBox(
                width: screenHeight*0.8,
                 height: screenWidth*0.2,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Enter Verification Code..',
                  prefixIcon: const Icon(Icons.password),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 50,
              width: 320,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 75, 99, 77),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Homescreen()),
                  );
                },
                child: const Text("Continue",
                    style: TextStyle(color: Colors.white, fontSize: 12)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
