import 'package:flutter/material.dart';

import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
@override
void initState() {
  super.initState();
  _navigatetohome();
}

_navigatetohome()async{
  await Future.delayed(Duration(milliseconds: 5000),(){});
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Tour Around World",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            Image.asset('images/splash.png'),
            const SizedBox(height: 20.0),          
          ],
        ),
      ),
    );
  }
}