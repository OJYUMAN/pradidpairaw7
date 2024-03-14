import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InteractiveViewer Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('InteractiveViewer Example'),
        ),
        body: InteractiveViewer(
          boundaryMargin: EdgeInsets.all(double.infinity),
          minScale: 0.1,
          maxScale: 10.0,
          child: Container(
            width: 840, // adjust width as needed
            height: 1188, // adjust height as needed
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  spreadRadius: 0.1,
                ), // no shadow color set, defaults to black
              ],
            ),
            child: Center(
              child: Text(
                'Drag me up and down!\nPinch to zoom!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),

      ),
    );
  }
}
