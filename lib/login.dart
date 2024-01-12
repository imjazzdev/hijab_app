import 'package:flutter/material.dart';
import 'package:hijab_app/SignUp.dart';
// import 'package:hijab_app/register.dart';
import 'package:hijab_app/home_screen.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
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
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _submit() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Perform authentication here
    // For example, check against a predefined username and password
    if (username == 'admin' && password == 'password') {
      // Navigate to the next screen or perform actions upon successful login
      // For now, just print a message
      print('Login successful!');
    } else {
      // Show an error message or handle incorrect login credentials
      print('Invalid username or password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/logo.png'), // Change to AssetImage
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
                height: 200,
                width: 200,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 16.0),
              Text(
                'LOGIN',
                textAlign: TextAlign.center,
                style: TextStyle(), // Add your desired text style
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
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
              Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return HomeScreen();
                      }),
                    );
                  },
                  child: Text('Login'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return SignUpPage();
                      }),
                    );
                  },
                  child: Text('Register'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
