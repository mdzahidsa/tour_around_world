import 'package:flutter/material.dart';
import 'package:mobapp/homepage.dart';
import 'package:mobapp/splash.dart';
import 'package:vibration/vibration.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Splash(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      //  appBar: AppBar(
      //  title: const Text('Welcome'),
      // centerTitle: true,
      //  ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome",
              style: TextStyle(
                color: Colors.white,
                fontSize: 55,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            Image.asset('images/image1.png'),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Vibration.vibrate();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const HomePage();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(minimumSize: const Size(250, 40)),
              child: const Text('Get Started'),
            )
          ],
        ),
      ),
    );
  }
}
