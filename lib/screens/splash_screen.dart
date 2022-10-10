import 'dart:async';
import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/Authentication/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage(),)));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 100,
              width: 100,
              child: Image.asset("images/Instagram Transparent Logo 2022.png")),
          ),
        ],
      ),
    );
  }
}