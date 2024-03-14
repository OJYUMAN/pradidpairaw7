import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Floating Container Example'),
        ),
        body: FloatingContainer(),
      ),
    );
  }
}

class FloatingContainer extends StatefulWidget {
  @override
  _FloatingContainerState createState() => _FloatingContainerState();
}

class _FloatingContainerState extends State<FloatingContainer> {
  double _xPosition = 0;
  double _yPosition = 0;
  double scale = 0.5;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: _xPosition,
          top: _yPosition,
          child: GestureDetector(
            onPanUpdate: (details) {
              setState(() {
                _xPosition += details.delta.dx;
                _yPosition += details.delta.dy;
              });
            },
            child: Transform.scale(
              scale: scale,
              child: Column(
                children: [
                Container(
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
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
