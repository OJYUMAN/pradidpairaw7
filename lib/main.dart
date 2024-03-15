import 'package:flutter/material.dart';
import 'MainProject.dart';

void main() {
  runApp(newMyApp());
}

class newMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation App',
      home: Screen1(),
    );
  }
}

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      _showLoginAlert(context);
    });
  }

  void _showLoginAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Login"),
          content: Text("Please log in to continue."),
          actions: [
            TextButton(
              onPressed: () {
                // Perform actions when login button is pressed
                Navigator.pop(context); // Close the alert dialog
              },
              child: Text("Login"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Pradidpairaw',
          style: TextStyle(
            color: Colors.brown,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.brown,
              padding: const EdgeInsets.all(10.0),
              textStyle: const TextStyle(fontSize: 15),
            ),
            onPressed: () {},
            child: const Text('Log in'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.brown,
              padding: const EdgeInsets.all(10.0),
              textStyle: const TextStyle(fontSize: 15),
            ),
            onPressed: () {},
            child: const Text('Sign up'),
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.brown,
            padding: const EdgeInsets.all(10.0),
            textStyle: const TextStyle(fontSize: 15),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          },
          child: Text('New Project'),
        ),
      ),
    );
  }
}
