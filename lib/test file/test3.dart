import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InteractiveViewer with Zero EdgeInsets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InteractiveViewer with Zero EdgeInsets'),
      ),
      body: Center(
        child: InteractiveViewer(
          boundaryMargin: EdgeInsets.zero,
          child: Image.network(
            'https://via.placeholder.com/400', // Placeholder image URL
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
