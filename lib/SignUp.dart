import 'package:flutter/material.dart';
// import 'package:hijab_app/login.dart';
// ignore: unused_import
import 'package:hijab_app/home_screen.dart';
import 'package:hijab_app/login.dart';

void main() {
  runApp(SignUpApp());
}

class SignUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFFF6A6EA, {
          50: Color(0xFFF6A6EA),
          100: Color(0xFFF6A6EA),
          200: Color(0xFFF6A6EA),
          300: Color(0xFFF6A6EA),
          400: Color(0xFFF6A6EA),
          500: Color(0xFFF6A6EA),
          600: Color(0xFFF6A6EA),
          700: Color(0xFFF6A6EA),
          800: Color(0xFFF6A6EA),
          900: Color(0xFFF6A6EA),
        }),
      ),
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _submit() {
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    // Perform sign up process here
    // For example, register the user in a database or authentication system
    print('Username: $username');
    print('Email: $email');
    print('Password: $password');
    // Add logic here to save user details or perform necessary actions

    // After sign up, you might want to navigate to a different screen
    // For now, just print a message
    print('Sign up successful!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('images/logo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                'images/logohijab.png',
                height: 150,
                width: 150,
                fit: BoxFit.contain,
              ),
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 24.0),
              Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginApp();
                        }));
                      },
                      child: Text('Register'))),
            ],
          ),
        ),
      ),
    );
  }
}
