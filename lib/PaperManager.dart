import 'package:flutter/material.dart';

class PaperManager {
  static void addPaper(List<Widget> pagepaper) {
    pagepaper.add(
      Column(
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
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
