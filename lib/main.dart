// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
// ignore: unused_import

void main() {
  runApp(HypeApp());
}

class HypeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hype GPS Tracker"),
        backgroundColor: const Color.fromARGB(255, 216, 132, 5),
      ),
      drawer: _buildDrawer(context),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'logo',
              child: Icon(
                Icons.gps_fixed,
                size: 100,
                color: const Color.fromARGB(255, 251, 133, 64),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Welcome to Hype GPS Tracker',
              style: GoogleFonts.poppins(
                fontSize: 28,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            _buildTextField("Email", false),
            SizedBox(height: 10),
            _buildTextField("Password", true),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement login functionality here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purpleAccent,
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text('Login'),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpPage()));
              },
              child: Text(
                'Don\'t have an account? Sign Up',
                style: GoogleFonts.lato(color: Colors.blue, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, bool isPassword) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration:
                BoxDecoration(color: const Color.fromARGB(255, 218, 149, 72)),
            child: Text(
              'Hype Menu',
              style: GoogleFonts.lato(fontSize: 24, color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Dashboard'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class GoogleFonts {
  static lato({required int fontSize, required Color color}) {}

  static poppins(
      {required int fontSize,
      required MaterialColor color,
      required FontWeight fontWeight}) {}

  static latoTextTheme() {}
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const color = const Color.fromARGB(255, 206, 145, 14);
    var background2 = newMethod;
    var background = background2;
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        backgroundColor: const Color.fromARGB(255, 206, 153, 6),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'logo',
              child: Icon(
                Icons.gps_fixed,
                size: 100,
                color: const Color.fromARGB(255, 214, 128, 15),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Create a new account',
              style: GoogleFonts.poppins(
                fontSize: 28,
                color: background,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            _buildTextField("Email", false),
            SizedBox(height: 10),
            _buildTextField("Password", true),
            SizedBox(height: 10),
            _buildTextField("Confirm Password", true),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement sign up functionality here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 206, 143, 7),
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }

  dynamic get newMethod {
    var background4 = null;
    var background3 = background4;
    var background2 = background3;
    var background = background2;
    return background;
  }

  Widget _buildTextField(String label, bool isPassword) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
    );
  }
}

mixin colorScheme {
  var background;
}

mixin backgroundColor {}
