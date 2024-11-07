import 'package:flutter/material.dart';
import 'package:herb_com/verification.dart/getstarted.dart';
import 'package:herb_com/verification.dart/otp.dart';
import 'package:herb_com/verification.dart/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Login> {
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
                  MaterialPageRoute(
                      builder: (context) => const Getstarted()),
                );
              },
            )),
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 133, right: 110),
              child: Image.asset('assets/images/logoo000-removebg-preview.png',
                  height: 150),
            ),
            const SizedBox(
              height: 100,
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
                height: 65,
                width: 390,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 75, 99, 77))),
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                )),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
                height: 65,
                width: 390,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                )),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
                height: 50,
                width: 360,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 75, 99, 77),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Otp()));
                    print('Login button pressed');
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            const SizedBox(height: 75),
            const Text(
              "  Don't have account ? ",
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              height: 30,
              width: 100,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 75, 99, 77),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Signup()));
                    print('Sign in button presses');
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )),
            )
          ]),
        ));
  }
}
