import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: unused_import
import 'package:hijab_app/SignUp.dart';
// ignore: unused_import
import 'package:hijab_app/login.dart';
//import 'package:hijab_app/splash_screen.dart';
import 'package:hijab_app/config/variable.dart';
// import 'package:hijab_app/splash_screen.dart';
// import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hijab Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Variable.primarySwatch,
          textTheme: GoogleFonts.poppinsTextTheme()),
      home: LoginPage(),
    );
  }
}
