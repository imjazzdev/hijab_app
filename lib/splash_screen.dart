import 'package:flutter/material.dart';
import 'package:hijab_app/home_screen.dart';
import 'package:hijab_app/config/variable.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Variable.primaryColor,
      body: Center(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'images/logo.png',
              ), // Replace with your image URL
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hijab Store',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Variable.whiteColor,
                ),
              ),
              const SizedBox(height: 16),
              CircularProgressIndicator(
                color: Variable.whiteColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
