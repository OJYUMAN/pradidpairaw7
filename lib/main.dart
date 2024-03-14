import 'package:flutter/material.dart';
import 'package:pradidpairaw7/PageView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 210, 210, 210),
        appBar: AppBar(
          title: Text('Floating Container'),
        ),
        body: PageViewContainer(),
      ),
    );
  }
}



